import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/features/authentication/controllers/login_controller.dart';
import 'package:jobpilot/src/features/authentication/views/forgot_password.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/utilities/form_validator_helper.dart';

import 'login.dart';

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
                name: "Email",
                [isRequired, isEmail],
              ),
              passwordValidator: FieldValidator.validate(
                name: "Password",
                [isRequired, tooShort8],
              ),
              goForgotPassword: ({String? email}) async =>
                  controller.shiftLoginView(),
              onFacebookClick: () {},
              onGoogleClick: () {},
            ),
            secondChild: ForgotPasswordSectionWidget(
              emailController: controller.emailController,
              onResetCallback: controller.forgotPassword,
              onFacebookSignIn: () {},
              goSignIn: () => controller.shiftLoginView(),
              goRegister: () {},
              onGoogleSignIn: () {},
            ),
          );
        });
  }
}
