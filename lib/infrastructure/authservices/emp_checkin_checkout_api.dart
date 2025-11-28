import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:login_app_bloc_freezed/infrastructure/authservices/auth_baseurl.dart';
import 'package:login_app_bloc_freezed/infrastructure/authservices/authentication_api.dart';

class EmpCheckinCheckoutApi {
  final Dio dio = Dio();
  AppUrls appUrls = AppUrls();
  Future<Response> emppost(String endpoint, Map<String, dynamic> data) async {
    try {
      final storage = FlutterSecureStorage();
      String? token = await storage.read(key: "token");

      Response response = await dio.post(
        "${appUrls.baseUrl}$endpoint",
        options: Options(
          headers: {
            "Authorization": "BASIC $token",
            "Content-Type": "multipart/form-data",
          },
        ),
        data: FormData.fromMap(data),
      );
      log("API Endpoint: ${appUrls.baseUrl}$endpoint");
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
