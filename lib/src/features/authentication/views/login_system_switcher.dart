import 'dart:developer';

import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' hide Trans;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/strings/home_strings.dart';
import 'package:jobpilot/src/features/authentication/controllers/login_controller.dart';
import 'package:jobpilot/src/features/authentication/views/forgot_password.dart';
import 'package:jobpilot/src/features/authentication/views/registration.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/form_validator_helper.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

import 'login.dart';

class LoginSystemScreen extends StatelessWidget {
  const LoginSystemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        backgroundColor: context.color?.theme,
        title: SvgPicture.asset(Assets.appLogoSvg),
        actions: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              onPressed: () => Get.to(() => const RegistrationScreen()),
              icon: SvgIcon(
                Assets.loginIcon,
                size: 22,
                color: context.color?.primary,
              ),
              label: Text(
                createAccount,
                style: context.text.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.color?.primary,
                ),
              ),
            ),
          )
        ],
      ),
      body: const LoginSystemSwitcher(),
    );
  }
}

class LoginSystemSwitcher extends StatelessWidget {
  const LoginSystemSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller) {
          final state = controller.showLogin
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond;
          return AnimatedCrossFade(
            crossFadeState: state,
            duration: const Duration(milliseconds: 380),
            firstChild: LoginSectionWidget(
              hasOldCredentials: AuthController.find.userCredentials != null,
              emailController: controller.emailController,
              passwordController: controller.passwordController,
              attemptLogin: controller.login,
              emailValidator: FieldValidator.validate(
                name: LocaleKeys.email.tr(),
                [isRequired, isEmail],
              ),
              passwordValidator: FieldValidator.validate(
                name: LocaleKeys.password.tr(),
                [isRequired, tooShort8],
              ),
              goForgotPassword: ({String? email}) async =>
                  controller.shiftLoginView(),
              onFacebookClick: () async {
                try {
                  final LoginResult loginResult =
                      await FacebookAuth.instance.login();
                  if (loginResult.accessToken != null) {
                    final OAuthCredential facebookAuthCredential =
                        FacebookAuthProvider.credential(
                      loginResult.accessToken!.token,
                    );
                    final user =
                        await FirebaseAuth.instance.signInWithCredential(
                      facebookAuthCredential,
                    );
                    print("Facebook user : $user");
                  }
                } catch (e, s) {
                  log("#FacebookAuthError", error: e, stackTrace: s);
                }
              },
              onGoogleClick: () async {
                try {
                  final GoogleSignInAccount? googleUser =
                      await GoogleSignIn().signIn();
                  final GoogleSignInAuthentication? googleAuth =
                      await googleUser?.authentication;

                  final credential = GoogleAuthProvider.credential(
                    accessToken: googleAuth?.accessToken,
                    idToken: googleAuth?.idToken,
                  );
                  final user = await FirebaseAuth.instance
                      .signInWithCredential(credential);
                  print("Google user : $user");
                } catch (e, s) {
                  log("#GoogleAuthError", error: e, stackTrace: s);
                }
              },
            ),
            secondChild: ForgotPasswordSectionWidget(
              emailController: controller.emailController,
              onResetCallback: controller.forgotPassword,
              goSignIn: () => controller.shiftLoginView(),
              goRegister: () => Get.to(() => const RegistrationScreen()),
              onFacebookSignIn: () {},
              onGoogleSignIn: () {},
            ),
          );
        });
  }
}
