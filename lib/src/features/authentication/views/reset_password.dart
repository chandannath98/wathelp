import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/form_validator_helper.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({
    super.key,
    required this.code,
    required this.email,
    required this.requestReset,
  });

  final String code;
  final String email;
  final Future<String?> Function({
    required String code,
    required String email,
    required String password,
  }) requestReset;

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
      body: ResetPasswordSectionWidget(
        onResetClick: ({required String password}) async {
          return await requestReset(
            code: code,
            email: email,
            password: password,
          );
        },
      ),
    );
  }
}

class ResetPasswordSectionWidget extends StatefulWidget {
  const ResetPasswordSectionWidget({
    super.key,
    this.passwordValidator,
    required this.onResetClick,
  });

  final Future<String?> Function({required String password}) onResetClick;
  final List<Validation>? passwordValidator;

  @override
  State<ResetPasswordSectionWidget> createState() =>
      _ResetPasswordSectionWidgetState();
}

class _ResetPasswordSectionWidgetState
    extends State<ResetPasswordSectionWidget> {
  final _formKey = GlobalKey<FormState>();
  bool _hidePassword = false;
  bool _hideConfirmPassword = false;
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  Future resetPassword() async {
    if (_formKey.currentState?.validate() ?? false) {
      if (passwordController.text == confirmPasswordController.text) {
        final res = await widget.onResetClick(
          password: passwordController.text,
        );
      } else {
        showToastWarning("Password didn't matched!");
      }
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
                  Center(
                    child: Text(
                      "Reset Password",
                      style: context.text.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.color?.opposite,
                      ),
                    ),
                  ),
                  10.height,
                  Text(
                    "Duis luctus interdum metus, ut consectetur ante consectetur sed. Suspendisse euismod viverra massa.",
                    textAlign: TextAlign.center,
                    style: context.text.titleMedium,
                  ),
                  12.height,
                  TextFormField(
                    obscureText: _hidePassword,
                    controller: passwordController,
                    validator: FieldValidator.validate(
                      name: "Password",
                      widget.passwordValidator,
                    ),
                    decoration: InputDecoration(
                      hintText: "New password...",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _hidePassword = !_hidePassword;
                          });
                        },
                        icon: Icon(
                          _hidePassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                    ),
                  ),
                  10.height,
                  TextFormField(
                    obscureText: _hideConfirmPassword,
                    validator: FieldValidator.validate(
                      name: "Confirm Password",
                      widget.passwordValidator,
                    ),
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      hintText: "Confirm password...",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _hideConfirmPassword = !_hideConfirmPassword;
                          });
                        },
                        icon: Icon(
                          _hidePassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                    ),
                  ),
                  10.height,
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton.icon(
                      onPressed: resetPassword.withOverlay,
                      icon: const Icon(Icons.arrow_back),
                      label: const Text(
                        "Reset Password",
                      ),
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
