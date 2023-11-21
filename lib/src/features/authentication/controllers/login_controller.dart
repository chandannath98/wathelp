import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/authentication/auth_repo.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/services/authentication/models/auth_credentials/auth_credentials.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class LoginController extends GetxController {
  final _authRepo = AuthRepository();
  final _authHandler = AuthController.find;

  bool showLogin = true;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  onInit() {
    super.onInit();
    emailController =
        TextEditingController(text: _authHandler.userCredentials?.email);
    passwordController =
        TextEditingController(text: _authHandler.userCredentials?.password);
    _authHandler.addListener(() {
      emailController.text = _authHandler.userCredentials?.email ?? "";
      passwordController.text = _authHandler.userCredentials?.password ?? "";
    });
  }

  @override
  onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  shiftLoginView() {
    showLogin = !showLogin;
    update();
  }

  Future<String?> login({
    required email,
    required String password,
    required bool isRememberMe,
  }) async {
    try {
      final data = await _authRepo.login(email: email, password: password);
      if (data.isSuccess) {
        showToastSuccess(data.data!.message!);
        await _authHandler.handleNewUser(data.data!.user!);
        await _authHandler.handleNewAuthToken(data.data!.token!);
        if (isRememberMe) {
          await _authHandler.saveAuthCredentials(
              AuthCredentials(email: email, password: password));
        } else {
          await _authHandler.removeAuthCredentials();
        }
      } else {
        showToastError(data.errorMsg);
      }
    } catch (e, s) {
      if (e is RequestException) e.handleError();
      log("#LoginError", error: e, stackTrace: s);
      return null;
    }
  }

  // Future<String?> sendPasswordResetOtp({
  //   required email,
  // }) async {
  //   try {
  //     final data = await _loginRepo.login(email: email, password: password);
  //     if (data.isSuccess) {
  //       showToastSuccess(data.data!.message!);
  //       await _authStorage.handleNewUser(data.data!.user!);
  //       await _authStorage.handleNewAuthToken(data.data!.token!);
  //       if (isRememberMe) {
  //         await _authStorage.saveAuthCredentials(
  //             AuthCredentials(email: email, password: password));
  //       } else {
  //         await _authStorage.removeAuthCredentials();
  //       }
  //     } else {
  //       showToastError(data.errorMsg);
  //     }
  //   } catch (e, s) {
  //     if (e is RequestException) e.handleError();
  //     log("#LoginError", error: e, stackTrace: s);
  //     return null;
  //   }
  // }
}
