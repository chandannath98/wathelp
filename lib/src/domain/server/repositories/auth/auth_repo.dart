import 'package:dio/dio.dart';
import 'package:jobpilot/src/domain/server/config/repository.dart';

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
}
