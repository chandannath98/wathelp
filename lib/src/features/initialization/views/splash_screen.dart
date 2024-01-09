import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  final duration = const Duration(seconds: 3);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: duration,
    )
      ..addListener(() {
        setState(() {});
      })
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color?.primary,
      body: LayoutBuilder(builder: (context, constraints) {
        return Opacity(
          opacity: _animationController.value,
          child: Center(
            child: SizedBox.square(
              dimension: constraints.maxWidth - 120,
              child: FittedBox(
                child: Center(
                  child: SvgPicture.asset(Assets.onboardSvg),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
