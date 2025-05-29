import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobile/data/api/api_client.dart';
import 'package:mobile/data/requests/login_request.dart';
import 'package:mobile/data/requests/sign_up_request.dart';
import 'package:mobile/data/responses/login_response.dart';
import 'package:mobile/data/responses/signup_response.dart';

class AuthService {
  final Dio _dio;
  final FlutterSecureStorage _storage;

  AuthService({required ApiClient apiClient})
      : _dio = apiClient.dio,
        _storage = apiClient.storage;

  Future<SignupResponse> signUp(SignUpRequest request) async {
    final response = await _dio.post('auth/sign-up', data: request.toJson());
    final signUpResponse = SignupResponse.fromJson(response.data);
    return signUpResponse;
  }

  Future<LoginResponse> login(LoginRequest request) async {
    final response = await _dio.post('auth/login', data: request.toJson());
    final loginResponse = LoginResponse.fromJson(response.data);
    await _storage.write(key: 'token', value: loginResponse.token);
    await _storage.write(key: 'user_data', value: jsonEncode(loginResponse.user.toJson()));
    return loginResponse;
  }

}