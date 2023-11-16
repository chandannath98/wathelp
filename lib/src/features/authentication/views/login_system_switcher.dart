import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/features/authentication/views/forgot_password.dart';
import 'package:jobpilot/src/features/authentication/views/reset_password.dart';
import 'package:jobpilot/src/features/authentication/views/varify_email.dart';

import 'login.dart';

class LoginSystemSwitcher extends StatefulWidget {
  const LoginSystemSwitcher({
    super.key,
  });

  @override
  State<LoginSystemSwitcher> createState() => _LoginSystemSwitcherState();
}

class _LoginSystemSwitcherState extends State<LoginSystemSwitcher> {
  bool showLogin = true;

  @override
  Widget build(BuildContext context) {
    final state =
        showLogin ? CrossFadeState.showFirst : CrossFadeState.showSecond;
    return AnimatedCrossFade(
      crossFadeState: state,
      duration: const Duration(milliseconds: 380),
      firstChild: LoginSectionWidget(
        attemptLogin: (
            {required email, required isRememberMe, required password}) async {
          Get.to(
            () => VerifyEmailScreen(
              email: "xyz@gmail.com",
              descriptor:
                  " verify your email address and activate your account.",
              onCodeSubmit: ({String? code}) async {
                Get.to(() => ResetPasswordScreen(
                      onResetClick: ({required String password}) async {},
                    ));
                return null;
              },
              onResendClick: () {},
            ),
          );
        },
        goForgotPassword: ({String? email}) async {
          print(email);
          setState(() {
            showLogin = !showLogin;
          });
        },
        onFacebookClick: () {},
        onGoogleClick: () {},
      ),
      secondChild: ForgotPasswordSectionWidget(
        onResetCallback: ({String? email}) async {
          return null;
        },
        onFacebookSignIn: () {},
        goSignIn: () {
          setState(() {
            showLogin = !showLogin;
          });
        },
        goRegister: () {},
        onGoogleSignIn: () {},
      ),
    );
  }
}
