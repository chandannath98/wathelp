import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({
    super.key,
    required this.onCodeSubmit,
    this.codeValidator,
    required this.onResendClick,
    required this.email,
    required this.descriptor,
  });

  final Future<String?> Function({required String code}) onCodeSubmit;
  final FormFieldValidator<String>? codeValidator;
  final VoidCallback onResendClick;
  final String email;
  final String descriptor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: context.color?.theme,
        title: SvgPicture.asset(
          Assets.appLogoSvg,
        ),
      ),
      body: VerifyEmailSectionWidget(
        email: email,
        descriptor: descriptor,
        onCodeSubmit: onCodeSubmit,
        onResendClick: onResendClick,
      ),
    );
  }
}

class VerifyEmailSectionWidget extends StatefulWidget {
  const VerifyEmailSectionWidget({
    super.key,
    this.codeValidator,
    required this.onCodeSubmit,
    required this.onResendClick,
    required this.email,
    required this.descriptor,
  });

  final Future<String?> Function({required String code}) onCodeSubmit;
  final FormFieldValidator<String>? codeValidator;
  final VoidCallback onResendClick;
  final String email;
  final String descriptor;

  @override
  State<VerifyEmailSectionWidget> createState() =>
      _VerifyEmailSectionWidgetState();
}

class _VerifyEmailSectionWidgetState extends State<VerifyEmailSectionWidget> {
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
                  Center(
                    child: Text(
                      "Email Verification",
                      style: context.text.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.color?.opposite,
                      ),
                    ),
                  ),
                  10.height,
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "We've sent an verification code to ",
                      style: context.text.titleMedium,
                      children: [
                        TextSpan(
                          text: widget.email,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " to ${widget.descriptor}",
                        ),
                      ],
                    ),
                  ),
                  24.height,
                  TextFormField(
                    validator: widget.codeValidator,
                    decoration: const InputDecoration(
                      hintText: "Enter code...",
                    ),
                  ),
                  10.height,
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          widget.onCodeSubmit(
                            code: "",
                          );
                        } else {}
                      },
                      icon: Icon(Icons.arrow_back),
                      label: Text(
                        "Reset Password",
                      ),
                    ),
                  ),
                  24.height,
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Didn't recieve any code! ",
                      style: context.text.titleMedium,
                      children: [
                        TextSpan(
                          text: "Resend code.",
                          recognizer: TapGestureRecognizer()
                            ..onTap = widget.onResendClick,
                          style: TextStyle(
                            color: context.color?.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
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
