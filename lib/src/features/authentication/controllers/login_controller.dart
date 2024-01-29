import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:jobpilot/src/domain/server/config/request_handler.dart';
import 'package:jobpilot/src/domain/server/repositories/authentication/auth_repo.dart';
import 'package:jobpilot/src/features/authentication/views/reset_password.dart';
import 'package:jobpilot/src/features/authentication/views/verify_email.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/services/authentication/models/auth_credentials/auth_credentials.dart';
import 'package:jobpilot/src/services/authentication/models/user_type/user_type.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class LoginController extends GetxController {
  final _authRepo = AuthRepository();
  final _authHandler = AuthController.find;

  bool showLogin = true;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  authCredListener() {
    emailController.text = _authHandler.userCredentials?.email ?? "";
    passwordController.text = _authHandler.userCredentials?.password ?? "";
  }

  @override
  onInit() {
    super.onInit();
    emailController =
        TextEditingController(text: _authHandler.userCredentials?.email);
    passwordController =
        TextEditingController(text: _authHandler.userCredentials?.password);
    _authHandler.addListener(authCredListener);
  }

  @override
  onClose() {
    emailController.dispose();
    passwordController.dispose();
    _authHandler.removeListener(authCredListener);
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
        if (isRememberMe) {
          await _authHandler.saveAuthCredentials(
            AuthCredentials(
              email: email,
              password: password,
            ),
          );
        } else {
          await _authHandler.removeAuthCredentials();
        }
        await _authHandler.handleNewUser(data.data!.user!);
        await _authHandler.handleNewAuthToken(data.data!.token!);
        Get.deleteAll();
        if (Navigator.of(Get.context!).canPop()) {
          Get.back();
        }
      } else {
        showToastError(data.errorMsg);
      }
    } catch (e, s) {
      if (e is RequestException) e.handleError(checkAuth: false);
      log("#LoginError", error: e, stackTrace: s);
      return null;
    }
    return null;
  }

  Future<bool> checkCodeSendStatus(String email) async {
    try {
      final res = await _authRepo.sendResetOTP(email: email);
      if (res.isSuccess) {
        showToastSuccess(res.data!);
        return true;
      } else {
        showToastError(res.errorMsg);
        return false;
      }
    } catch (e, s) {
      if (e is RequestException) e.handleError();
      log("#CodeSendError", error: e, stackTrace: s);
      return false;
    }
  }

  Future<String?> requestPasswordReset({
    required String code,
    required String email,
    required String password,
  }) async {
    try {
      final res = await _authRepo.requestResetPassword(
        code: code,
        email: email,
        password: password,
      );
      if (res.isSuccess) {
        showLogin = true;
        showToastSuccess(res.data!);
        Get.back();
      } else {
        showToastError(res.errorMsg);
      }
    } catch (e, s) {
      log("#ResetError", error: e, stackTrace: s);
      if (e is RequestException) {
        e.handleError();
        if (e.statusCode == 400) Get.back();
      }
    }
  }

  Future<String?> forgotPassword({required email}) async {
    final codeSendState = await checkCodeSendStatus(email);
    if (codeSendState) {
      Get.to(
        () => VerifyEmailScreen(
          email: email,
          descriptor: "your verify your account.",
          onCodeSubmit: ({required String code}) async => Get.off(
            () => ResetPasswordScreen(
              email: email,
              code: code,
              requestReset: requestPasswordReset,
            ),
          ),
          onResendClick: () async => checkCodeSendStatus(email),
        ),
      );
    }
  }

  void initiateGoogleLogin() async {
    try {
      final loginHandler = GoogleSignIn();
      if (await loginHandler.isSignedIn()) await loginHandler.signOut();
      final user = await loginHandler.signIn();
      final authData = await user?.authentication;
      if (authData?.accessToken != null) {
        final res = await _authRepo.authenticateSocialTokens(
          firebaseToken: authData!.accessToken!,
        );
        log("GoogleLoginHandler : ${res.data}");
      } else {
        showToastError("Google authentication failed!");
        // TODO: Handle login data. And remember to logout from google and firebaseAuth!
      }
    } catch (e, s) {
      log("#GoogleLoginError", error: e, stackTrace: s);
    }
  }

  void initiateFacebookLogin() async {
    try {
      final loginHandler = FacebookAuth.instance;
      await loginHandler.logOut();
      final authData = await loginHandler.login();
      if (authData.accessToken?.token != null) {
        final authCred =
            FacebookAuthProvider.credential(authData.accessToken!.token);
        final res = await _authRepo.authenticateSocialTokens(
          firebaseToken: authCred.accessToken!,
        );
        log("FacebookLoginHandler : ${res.data}");
        // TODO: Handle login data. And remember to logout from facebook and firebaseAuth!
      } else {
        showToastError("Facebook authentication failed!");
      }
    } catch (e, s) {
      log("#FacebookLoginError", error: e, stackTrace: s);
    }
  }
}
