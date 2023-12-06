import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/constants/strings/home_strings.dart';
import 'package:jobpilot/src/global/widgets/social_login_button.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/functions.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
      body: LoginSectionWidget(
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        attemptLogin: (
            {required email, required isRememberMe, required password}) async {
          return null;
        },
        goForgotPassword: ({String? email}) async {
          print(email);
        },
        onFacebookClick: () {},
        onGoogleClick: () {},
      ),
    );
  }
}

typedef LoginCallback = Future<String?> Function({
  required String email,
  required String password,
  required bool isRememberMe,
});

class LoginSectionWidget extends StatefulWidget {
  const LoginSectionWidget({
    super.key,
    this.hasOldCredentials = false,
    required this.emailController,
    required this.passwordController,
    this.emailValidator,
    this.passwordValidator,
    required this.attemptLogin,
    required this.goForgotPassword,
    required this.onFacebookClick,
    required this.onGoogleClick,
  });

  final bool hasOldCredentials;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  final LoginCallback attemptLogin;

  final Future<void> Function({String? email}) goForgotPassword;
  final VoidCallback onFacebookClick;
  final VoidCallback onGoogleClick;
  final FormFieldValidator<String>? emailValidator;
  final FormFieldValidator<String>? passwordValidator;

  @override
  State<LoginSectionWidget> createState() => _LoginSectionWidgetState();
}

class _LoginSectionWidgetState extends State<LoginSectionWidget> {
  final _formKey = GlobalKey<FormState>();
  late bool _isRememberMe;
  bool _hidPassword = true;

  late final FocusNode _emailFocusNode;
  late final FocusNode _passwordFocusNode;

  @override
  void initState() {
    super.initState();
    _isRememberMe = widget.hasOldCredentials;
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
  }

  Future<void> onLoginClick() async {
    rmvFocus();
    if (_formKey.currentState?.validate() ?? false) {
      final val = await widget.attemptLogin(
        email: widget.emailController.text,
        password: widget.passwordController.text,
        isRememberMe: _isRememberMe,
      );
      if (val != null) showToastError(val);
    }
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: horizontal16 + vertical16,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Sign in",
                    style: context.text.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.color?.opposite,
                    ),
                  ),
                  24.height,
                  TextFormField(
                    focusNode: _emailFocusNode,
                    controller: widget.emailController,
                    validator: widget.emailValidator,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) =>
                        _passwordFocusNode.requestFocus(),
                    decoration: const InputDecoration(
                      hintText: "Email address...",
                    ),
                  ),
                  10.height,
                  TextFormField(
                    obscureText: _hidPassword,
                    focusNode: _passwordFocusNode,
                    controller: widget.passwordController,
                    validator: widget.passwordValidator,
                    onFieldSubmitted: (value) => onLoginClick.withOverlay(),
                    decoration: InputDecoration(
                      hintText: "Password",
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
                  5.height,
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Checkbox(
                              value: _isRememberMe,
                              visualDensity: VisualDensity.compact,
                              onChanged: (value) {
                                setState(() {
                                  _isRememberMe = value ?? false;
                                });
                              },
                            ),
                            const Expanded(
                              child: Text(
                                "Remember me",
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () => widget.goForgotPassword(),
                        child: const Text(
                          "Forgot Password",
                        ),
                      ),
                    ],
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton.icon(
                      onPressed: onLoginClick.withOverlay,
                      icon: const Icon(Icons.arrow_back),
                      label: const Text(
                        "Sign In",
                      ),
                    ),
                  ),
                  10.height,
                  const Center(
                    child: Text(
                      "OR",
                    ),
                  ),
                  10.height,
                  SocialButton(
                    text: "Sign in with Facebook",
                    iconLink:
                        "https://img.icons8.com/?size=48&id=118497&format=png",
                    onTap: widget.onFacebookClick,
                  ),
                  10.height,
                  SocialButton(
                    text: "Sign in with Google",
                    iconLink:
                        "https://img.icons8.com/?size=48&id=17949&format=png",
                    onTap: widget.onGoogleClick,
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
