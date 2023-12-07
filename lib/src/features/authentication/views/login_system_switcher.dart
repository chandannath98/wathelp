import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
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
