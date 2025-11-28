import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:login_app_bloc_freezed/infrastructure/authservices/auth_baseurl.dart';
import 'package:login_app_bloc_freezed/infrastructure/authservices/authentication_api.dart';

class EmpCheckinCheckoutStatus {
  final Dio dio = Dio();
  AppUrls appUrls = AppUrls();
  Future<Response> empGet(String endpoint) async {
    try {
      final storage = FlutterSecureStorage();
      String? token = await storage.read(key: "token");

      Response response = await dio.get(
        "${appUrls.baseUrl}$endpoint",
        options: Options(
          headers: {
            "Authorization": "BASIC $token",
            "Content-Type": "multipart/form-data",
          },
        ),
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
