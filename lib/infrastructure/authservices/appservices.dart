import 'package:dio/dio.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal();

  factory ApiService() => _instance;
  ApiService._internal() {
    // Add interceptor for 401
    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: (e, handler) async {
          if (e.response?.statusCode == 401) {
            // Unauthorized → force logout
            _token = null;
            _dio.options.headers.remove("Authorization");
          }
          handler.next(e);
        },
      ),
    );
  }

  static const String baseUrl =
      "https://disa-uat.m.frappe.cloud//api/method/disa_backend.api.v1.";
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {"Content-Type": "application/json"},
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 40),
      sendTimeout: const Duration(seconds: 15),
    ),
  );

  String? _token;

  String _handleError(DioException e) {
    if (e.response?.statusCode == 401) {
      // Unauthorized → force logout
      _token = null;
      _dio.options.headers.remove("Authorization");
    }

    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return "Connection timeout. Please try again.";
      case DioExceptionType.sendTimeout:
        return "Send timeout. Please try again.";
      case DioExceptionType.receiveTimeout:
        return "Receive timeout. Please try again.";

      case DioExceptionType.badResponse:
        return e.response?.data["message"] ?? "Server error occurred.";
      case DioExceptionType.cancel:
        return "Request cancelled.";
      case DioExceptionType.unknown:
      default:
        return "Connection error. Please check your internet.";
    }
  }
}
