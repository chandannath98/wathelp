import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/features/homepage/controllers/homepage_controller.dart';
import 'package:jobpilot/src/services/theme/extensions/colors_theme.dart';
import 'package:jobpilot/src/utilities/overlay_loader.dart';

import 'widgets/homepage_actions.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomepageController>(builder: (controller) {
      const profile =
          "https://images.unsplash.com/photo-1531891437562-4301cf35b7e4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDd8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D";
      return Scaffold(
        backgroundColor: context.color?.background,
        appBar: AppBar(
          elevation: 2,
          backgroundColor: context.color?.theme,
          title: Image.asset(
            Assets.appLogo,
          ),
          actions: [
            HomepageActions(
              profilePic: profile,
              isAuthenticated: controller.isAuthenticated,
              onLoginClick: controller.onLoginClick.withOverlay,
              onProfileClick: controller.onProfileClick.withOverlay,
              onNotificationClick: () => controller.onNotificationClick(),
            ),
          ],
        ),
        body: const CustomScrollView(
          slivers: [],
        ),
      );
    });
  }
}
