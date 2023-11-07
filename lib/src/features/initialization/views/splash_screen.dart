import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/features/homepage/views/homepage.dart';
import 'package:jobpilot/src/features/initialization/controllers/init_controller.dart';

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

    final controller = Get.put(InitializationController(
      afterInit: () {
        Get.off(() => const Homepage());
      },
    ));
    controller.initializeApp();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Opacity(
          opacity: _animationController.value,
          child: Center(
            child: SizedBox.square(
              dimension: constraints.maxWidth - 120,
              child: FittedBox(
                child: Center(
                  child: Image.asset(Assets.appLogo),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

/* Center(
        child: SizedBox.square(
          dimension: 250,
          child: Center(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: FittedBox(
                      alignment: Alignment.center,
                      child: Image.asset(
                        Assets.appIcon,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Center(
                    child: Text(
                      appName,
                      style: context.text.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.color?.opposite,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ) */