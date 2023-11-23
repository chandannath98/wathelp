import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({
    super.key,
    required this.onResetClick,
    this.passwordValidator,
  });

  final Future<String?> Function({required String password}) onResetClick;
  final FormFieldValidator<String>? passwordValidator;

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
        onResetClick: onResetClick,
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
  final FormFieldValidator<String>? passwordValidator;

  @override
  State<ResetPasswordSectionWidget> createState() =>
      _ResetPasswordSectionWidgetState();
}

class _ResetPasswordSectionWidgetState
    extends State<ResetPasswordSectionWidget> {
  final _formKey = GlobalKey<FormState>();
  bool _hidPassword = false;

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
                    obscureText: _hidPassword,
                    validator: widget.passwordValidator,
                    decoration: InputDecoration(
                      hintText: "New password...",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _hidPassword = !_hidPassword;
                          });
                        },
                        icon: Icon(
                          _hidPassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                    ),
                  ),
                  10.height,
                  TextFormField(
                    obscureText: _hidPassword,
                    validator: widget.passwordValidator,
                    decoration: InputDecoration(
                      hintText: "Confirm password...",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _hidPassword = !_hidPassword;
                          });
                        },
                        icon: Icon(
                          _hidPassword
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
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          widget.onResetClick(
                            password: "",
                          );
                        } else {}
                      },
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
