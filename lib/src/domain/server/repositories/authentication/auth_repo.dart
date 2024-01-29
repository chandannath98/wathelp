import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/domain/server/repositories/authentication/models/register_data/register_data.dart';
import 'package:jobpilot/src/services/authentication/models/user_type/user_type.dart';

import 'models/login_response/login_response.dart';

class AuthRepository extends ServerRepo {
  Future<ResponseWrapper<LoginResponse>> login(
      {required String email, required String password}) async {
    try {
      final response = await requestHandler.post(
        API.login,
        FormData.fromMap({
          "email": email,
          "password": password,
        }),
      );
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => LoginResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<LoginResponse>> getCurrentUserProfile() async {
    try {
      final response = await requestHandler.get(API.profile);
      log("ProfileResponse : ${response.data}");
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => LoginResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<RegisterData>> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
    required UserType userType,
  }) async {
    try {
      final regData = {
        "name": name,
        "email": email,
        "role": userType.name,
        "password": password,
        "password_confirmation": confirmPassword,
      };

      final response = await requestHandler.post(
        API.register,
        FormData.fromMap(regData),
      );

      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => RegisterData.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper> authenticateSocialTokens({
    String? name,
    String? email,
    UserType? userType,
    required String firebaseToken,
  }) async {
    try {
      final authData = {
        if (name != null) "name": name,
        if (email != null) "email": email,
        if (userType != null) "role": userType.name,
        "Firebasetoken": firebaseToken,
      };

      log("SocialAuthData: $authData");

      final response = await requestHandler.post(
        API.socialLogin,
        FormData.fromMap(authData),
      );

      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => json,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<String>> sendResetOTP({required String email}) async {
    try {
      final response = await requestHandler.post(
        API.forgetPassword,
        FormData.fromMap({"email": email}),
      );
      return ResponseWrapper.fromMap(
        print: true,
        response: response.data,
        status: response.statusCode,
        purse: (json) => json['message'] as String,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<String>> requestResetPassword(
      {required String code,
      required String email,
      required String password}) async {
    try {
      final data = {
        "code": code,
        "email": email,
        "password": password,
      };

      final response = await requestHandler.post(
        API.resetPassword,
        FormData.fromMap(data),
      );
      return ResponseWrapper.fromMap(
        print: true,
        response: response.data,
        status: response.statusCode,
        purse: (json) => json['message'] as String,
      );
    } catch (e) {
      rethrow;
    }
  }
}
