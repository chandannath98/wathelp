import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/constants/strings/home_strings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
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
                createAccount,
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
                    "Forgot password",
                    style: context.text.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.color?.opposite,
                    ),
                  ),
                  24.height,
                  RichText(
                    text: TextSpan(
                      text: "Go back to ",
                      style: context.text.titleMedium,
                      children: [
                        TextSpan(
                          text: "Sign In.",
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
                      text: "Don't have account? ",
                      style: context.text.titleMedium,
                      children: [
                        TextSpan(
                          text: "Create Account.",
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
                    controller: widget.emailController,
                    validator: widget.emailValidator,
                    decoration: const InputDecoration(
                      hintText: "Email address...",
                    ),
                  ),
                  10.height,
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          widget.onResetCallback(
                            email: widget.emailController.text,
                          );
                        } else {}
                      },
                      icon: Icon(Icons.arrow_back),
                      label: Text(
                        "Reset Password",
                      ),
                    ),
                  ),
                  10.height,
                  Center(
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.text,
    required this.iconLink,
    required this.onTap,
  });
  final String text;
  final String iconLink;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(4),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.color?.theme,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 0.5,
              color: context.color?.extra ?? Colors.grey,
            ),
          ),
          child: Padding(
            padding: vertical6 + horizontal12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox.square(
                  child: Image.network(
                    iconLink,
                  ),
                ),
                12.width,
                Flexible(
                  child: Text(
                    text,
                    style: context.text.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
