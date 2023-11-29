import 'dart:developer';

import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/authentication/auth_repo.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/services/authentication/models/auth_credentials/auth_credentials.dart';
import 'package:jobpilot/src/services/authentication/models/user_type/user_type.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class RegistrationController extends GetxController {
  final _authRepo = AuthRepository();
  final _authHandler = AuthController.find;

  Future<String?> createAccount({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String confirmPassword,
    required UserType userType,
  }) async {
    try {
      final data = await _authRepo.register(
        email: email,
        userType: userType,
        password: password,
        name: "$firstName $lastName",
        confirmPassword: confirmPassword,
      );
      if (data.isSuccess) {
        await _authHandler.saveAuthCredentials(AuthCredentials(
          email: email,
          password: password,
        ));
        showToastSuccess(data.message ?? "Registration successful!");
        Get.back();
      } else {
        showToastError(data.errorMsg);
      }
    } catch (e, s) {
      if (e is RequestException) {
        e.handleError();
      }
      log("#CreateAccountError", error: e, stackTrace: s);
      return null;
    }
    return null;
  }
}
