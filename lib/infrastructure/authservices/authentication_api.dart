import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:login_app_bloc_freezed/infrastructure/authservices/auth_baseurl.dart';

class AuthenticationApi {
  final Dio dio = Dio();
  AppUrls appUrls = AppUrls();
  Future<Response> authpost(Map<String, dynamic> data) async {
    try {
      Response response = await dio.post(
        appUrls.baseUrl,
        data: FormData.fromMap(data),
      );
      log("API Endpoint: ${appUrls.baseUrl}");
      return response;
    } on DioException catch (e) {
      log("DioException: ${e.response?.data}");
      throw Exception(ExceptionHandler.handleDioException(e));
    } catch (e) {
      log("Unexpected error: $e");
      throw Exception("Unexpected error occurred: $e");
    }
  }
}

class ExceptionHandler {
  static String handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return "Connection timeout, please try again.";
      case DioExceptionType.sendTimeout:
        return "Request timeout, please try again.";
      case DioExceptionType.receiveTimeout:
        return "Response timeout, please try again.";
      case DioExceptionType.badResponse:
        return e.response?.data["message"] ??
            "Server error: ${e.response?.statusCode}";
      case DioExceptionType.cancel:
        return "Request was cancelled.";
      case DioExceptionType.unknown:
      default:
        return "An unknown error occurred. Please check your connection.";
    }
  }
}
