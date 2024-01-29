import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
      if (e is RequestException) e.handleError(checkAuth: false);
      log("#CreateAccountError", error: e, stackTrace: s);
      return null;
    }
    return null;
  }

  void initiateGoogleRegistration(UserType type) async {
    try {
      final loginHandler = GoogleSignIn();
      if (await loginHandler.isSignedIn()) await loginHandler.signOut();
      final user = await loginHandler.signIn();
      final authData = await user?.authentication;
      if (authData?.accessToken != null) {
        final res = await _authRepo.authenticateSocialTokens(
          userType: type,
          email: user?.email,
          name: user?.displayName,
          firebaseToken: authData!.accessToken!,
        );
        log("GoogleRegistrationHandler : ${res.data}");
        // TODO: Handle registration data. And remember to logout from google and firebaseAuth!
      } else {
        showToastError("Google authentication failed!");
      }
    } catch (e, s) {
      log("#GoogleRegistrationError", error: e, stackTrace: s);
    }
  }

  void initiateFacebookRegistration(UserType type) async {
    try {
      final loginHandler = FacebookAuth.instance;
      await loginHandler.logOut();
      final authData = await loginHandler.login();

      if (authData.accessToken?.token != null) {
        final authCred =
            FacebookAuthProvider.credential(authData.accessToken!.token);
        final userCred =
            await FirebaseAuth.instance.signInWithCredential(authCred);
        final res = await _authRepo.authenticateSocialTokens(
          userType: type,
          email: userCred.user?.email,
          name: userCred.user?.displayName,
          firebaseToken: authCred.accessToken!,
        );
        log("FacebookRegistrationHandler : ${res.data}");
        // TODO: Handle registration data. And remember to logout from facebook and firebaseAuth!
      } else {
        showToastError("Facebook authentication failed!");
      }
    } catch (e, s) {
      log("#FacebookRegistrationError", error: e, stackTrace: s);
    }
  }
}
