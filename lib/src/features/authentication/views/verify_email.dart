import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
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
  final Future<void> Function() onResendClick;
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
  final Future<void> Function() onResendClick;
  final String email;
  final String descriptor;

  @override
  State<VerifyEmailSectionWidget> createState() =>
      _VerifyEmailSectionWidgetState();
}

class _VerifyEmailSectionWidgetState extends State<VerifyEmailSectionWidget> {
  final _formKey = GlobalKey<FormState>();
  final _codeController = TextEditingController();

  onResendTap() async {
    await widget.onResendClick.withOverlay();
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
                    controller: _codeController,
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
                            code: _codeController.text,
                          );
                        } else {}
                      },
                      icon: const Icon(Icons.arrow_back),
                      label: const Text(
                        "Reset Password",
                      ),
                    ),
                  ),
                  24.height,
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Didn't receive any code!",
                      style: context.text.titleMedium,
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: ResendTimerButton(
                            onTap: onResendTap,
                          ),
                        )
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

class ResendTimerButton extends StatefulWidget {
  const ResendTimerButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  State<ResendTimerButton> createState() => _ResendTimerButtonState();
}

class _ResendTimerButtonState extends State<ResendTimerButton> {
  Timer? resetTimer;

  onButtonClick() {
    resetTimer?.cancel();
    resetTimer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {});
        if (resetTimer == null || timer.tick == 60) {
          resetTimer!.cancel();
          resetTimer = null;
        }
      },
    );
    widget.onTap();
  }

  @override
  void dispose() {
    resetTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final onClick = resetTimer != null ? null : onButtonClick;
    final timeText = resetTimer == null ? "" : " (${60 - resetTimer!.tick})";
    return TextButton(
      style: TextButton.styleFrom(
        padding: horizontal8,
        textStyle: context.text.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: onClick,
      child: Text(
        "Resend code$timeText.",
      ),
    );
  }
}
