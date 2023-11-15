import 'package:flutter/material.dart';
import 'package:jobpilot/src/features/authentication/views/registration.dart';

import 'login.dart';

class AuthenticationSwitcher extends StatelessWidget {
  const AuthenticationSwitcher({
    super.key,
    required this.showLogin,
  });
  final bool showLogin;

  @override
  Widget build(BuildContext context) {
    final state =
        showLogin ? CrossFadeState.showFirst : CrossFadeState.showSecond;
    return AnimatedCrossFade(
      crossFadeState: state,
      duration: const Duration(milliseconds: 380),
      firstChild: const LoginSectionWidget(),
      secondChild: const RegistrationSectionWidget(),
    );
  }
}
