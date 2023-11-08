import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/homepage/controllers/homepage_controller.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

import 'widgets/header_section.dart';
import 'widgets/homepage_actions.dart';
import 'widgets/more_vacancy.dart';
import 'widgets/popular_category.dart';
import 'widgets/tutorial_section.dart';

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
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: horizontal16,
                child: NoUserHomeHeader(),
              ),
            ),
            SliverToBoxAdapter(
              child: 32.height,
            ),
            const SliverToBoxAdapter(
              child: HomeMoreVacanciesSection(),
            ),
            const SliverToBoxAdapter(
              child: HomeTutorialSection(),
            ),
            // SliverToBoxAdapter(
            //   child: 32.height,
            // ),
            const SliverToBoxAdapter(
              child: HomePopularCategorySection(),
            ),
            SliverToBoxAdapter(
              child: 32.height,
            ),
          ],
        ),
      );
    });
  }
}
