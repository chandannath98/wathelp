import 'dart:async';

import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        automaticallyImplyLeading: false,
        backgroundColor: context.color?.theme,
        title: SvgPicture.asset(
          Assets.appLogoSvg,
        ),
        actions: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              onPressed: () {},
              icon: SvgIcon(
                Assets.loginIcon,
                size: 22,
                color: context.color?.primary,
              ),
              label: Text(
                LocaleKeys.create_account.tr(),
                style: context.text.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.color?.primary,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ForgotPasswordSectionWidget(
        emailController: TextEditingController(),
        onResetCallback: ({String? email}) async {
          return null;
        },
        onFacebookSignIn: () {},
        goSignIn: () {},
        goRegister: () {},
        onGoogleSignIn: () {},
      ),
    );
  }
}

class ForgotPasswordSectionWidget extends StatefulWidget {
  const ForgotPasswordSectionWidget({
    super.key,
    this.emailValidator,
    required this.emailController,
    required this.onResetCallback,
    required this.onFacebookSignIn,
    required this.goSignIn,
    required this.goRegister,
    required this.onGoogleSignIn,
  });

  final Future<String?> Function({required String email}) onResetCallback;
  final TextEditingController emailController;
  final FormFieldValidator<String>? emailValidator;
  final VoidCallback onFacebookSignIn;
  final VoidCallback goSignIn;
  final VoidCallback goRegister;
  final VoidCallback onGoogleSignIn;

  @override
  State<ForgotPasswordSectionWidget> createState() =>
      _ForgotPasswordSectionWidgetState();
}

class _ForgotPasswordSectionWidgetState
    extends State<ForgotPasswordSectionWidget> {
  final _formKey = GlobalKey<FormState>();

  Future submitEmail() async {
    if (_formKey.currentState?.validate() ?? false) {
      final res = await widget.onResetCallback(
        email: widget.emailController.text,
      );
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: horizontal16,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    LocaleKeys.forget_password.tr(),
                    style: context.text.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.color?.opposite,
                    ),
                  ),
                  24.height,
                  RichText(
                    text: TextSpan(
                      text: LocaleKeys.go_back_to.tr(),
                      style: context.text.titleMedium,
                      children: [
                        TextSpan(
                          text: " ${LocaleKeys.sign_in.tr()}.",
                          recognizer: TapGestureRecognizer()
                            ..onTap = widget.goSignIn,
                          style: TextStyle(
                            color: context.color?.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  8.height,
                  RichText(
                    text: TextSpan(
                      text: "${LocaleKeys.dont_have_account.tr()} ",
                      style: context.text.titleMedium,
                      children: [
                        TextSpan(
                          text: "${LocaleKeys.create_account.tr()}.",
                          recognizer: TapGestureRecognizer()
                            ..onTap = widget.goRegister,
                          style: TextStyle(
                            color: context.color?.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  24.height,
                  TextFormField(
                    validator: widget.emailValidator,
                    controller: widget.emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) => submitEmail.withOverlay(),
                    decoration: InputDecoration(
                      hintText: "${LocaleKeys.email_address.tr()}...",
                    ),
                  ),
                  10.height,
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton.icon(
                      onPressed: submitEmail.withOverlay,
                      icon: const Icon(Icons.arrow_back),
                      label: Text(
                        LocaleKeys.reset_password.tr(),
                      ),
                    ),
                  ),
                  10.height,
                  //Removed on very first testing phase!
                  /* const Center(
                    child: Text(
                      "OR",
                    ),
                  ),
                  10.height,
                  SocialButton(
                    text: "Sign in with Facebook",
                    iconLink:
                        "https://img.icons8.com/?size=48&id=118497&format=png",
                    onTap: widget.onFacebookSignIn,
                  ),
                  10.height,
                  SocialButton(
                    text: "Sign in with Google",
                    iconLink:
                        "https://img.icons8.com/?size=48&id=17949&format=png",
                    onTap: widget.onGoogleSignIn,
                  ), */
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
