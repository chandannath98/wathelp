import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/features/authentication/controllers/login_controller.dart';
import 'package:jobpilot/src/features/authentication/views/forgot_password.dart';
import 'package:jobpilot/src/features/authentication/views/reset_password.dart';
import 'package:jobpilot/src/features/authentication/views/varify_email.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';

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
  void initState() {
    super.initState();
    Get.put(LoginController());
  }

  @override
  Widget build(BuildContext context) {
    final state =
        showLogin ? CrossFadeState.showFirst : CrossFadeState.showSecond;
    return GetBuilder<LoginController>(builder: (controller) {
      return AnimatedCrossFade(
        crossFadeState: state,
        duration: const Duration(milliseconds: 380),
        firstChild: LoginSectionWidget(
          hasOldCredentials: AuthController.find.userCredentials != null,
          emailController: controller.emailController,
          passwordController: controller.passwordController,
          attemptLogin: controller.login,
          emailValidator: (value) {
            if (value == null || value.isEmpty) return "Email is required!";
            return value.isEmail ? null : "Enter a valid email!";
          },
          passwordValidator: (value) {
            if (value == null || value.length < 6) {
              return "Password is too short!";
            }
            return null;
          },
          goForgotPassword: ({String? email}) async {
            setState(() {
              showLogin = !showLogin;
            });
          },
          onFacebookClick: () {},
          onGoogleClick: () {},
        ),
        secondChild: ForgotPasswordSectionWidget(
          emailController: controller.emailController,
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
    });
  }
}
