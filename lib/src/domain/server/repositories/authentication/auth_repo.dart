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
        rawData: response.data,
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
        rawData: response.data,
        status: response.statusCode,
        purse: (json) => RegisterData.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }
}
