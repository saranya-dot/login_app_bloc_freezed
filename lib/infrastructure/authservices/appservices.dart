import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:login_app_bloc_freezed/domain/authrequestmodel.dart';
import 'package:login_app_bloc_freezed/domain/authresponsemodel.dart';
import 'package:login_app_bloc_freezed/domain/empCheckInOut.dart';
import 'package:login_app_bloc_freezed/domain/empcheckresponse.dart';

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
      "https://disa-uat.m.frappe.cloud//api/method/disa_backend.api.";
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
  final storage = const FlutterSecureStorage();

  Future<void> init() async {
    final token = await storage.read(key: "auth_token");
    if (token != null && token.isNotEmpty) {
      setToken(token);
    }
  }

  void setToken(String token) async {
    if (token.isEmpty) return;
    _token = token;
    _dio.options.headers["Authorization"] = "BASIC $token";
    await storage.write(key: "auth_token", value: token);
    log(" Token saved: $token");
  }

  dynamic _decodeResponse(dynamic data) {
    if (data is String) {
      try {
        return jsonDecode(data.substring(data.indexOf('{')));
      } catch (_) {
        return jsonDecode(data);
      }
    }
    return data;
  }

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

  //get
  Future<dynamic> get(String path) async {
    try {
      final response = await _dio.get(path);
      return _decodeResponse(response.data);
    } on DioException catch (e) {
      throw Exception(_handleError(e));
    }
  }

  //post
  Future<dynamic> post(String path, {dynamic data}) async {
    try {
      final response = await _dio.post(path, data: data);
      return _decodeResponse(response.data);
    } on DioException catch (e) {
      throw Exception(_handleError(e));
    }
  }

  //login function
  Future<AuthResponseModel> loginUser(AuthRequestModel request) async {
    try {
      final response = await _dio.post(
        "v1.auth.authenticate",
        data: request.toMap(),
      );
      final data = _decodeResponse(response.data);
      log("Response Data: ${response.data}");
      final loginResponse = AuthResponseModel.fromJson(data);
      setToken(loginResponse.message.token);
      return loginResponse;
    } on DioException catch (e) {
      throw Exception(_handleError(e));
    }
  }

  // get employee status
  Future<EmployeeStatusResponse> getEmployeeStatus() async {
    try {
      final response = await _dio.get("v1.employee.get_checkin_status");

      final data = _decodeResponse(response.data);
      log(" Decoded Response: $data");
      final employeeStatusResponse = EmployeeStatusResponse.fromJson(data);
      return employeeStatusResponse;
    } on DioException catch (e) {
      throw Exception(_handleError(e));
    }
  }

  // Employee Checkin / Checkout
  Future<Response> empCheckinCheckout(
    EmployeeCheckinCheckoutRequestModel request,
  ) async {
    try {
      final response = await _dio.post(
        "v1.employee.employee_checkin",
        data: request.toJson(),
      );
      final data = _decodeResponse(response.data);
      log("Request Data: ${jsonEncode(request.toJson())}");
      log("Response Data: $data");
      return response;
    } on DioException catch (e) {
      throw Exception(_handleError(e));
    }
  }
}
