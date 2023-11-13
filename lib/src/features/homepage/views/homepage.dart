import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/strings/home_strings.dart';
import 'package:jobpilot/src/features/browse_section/views/browse_screen.dart';
import 'package:jobpilot/src/features/find_jobs/views/find_jobs.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

import '../controllers/homepage_controller.dart';
import '../widgets/actions.dart';
import '../widgets/bottom_navigation.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomepageController>(
      builder: (controller) {
        const profile =
            "https://images.unsplash.com/photo-1531891437562-4301cf35b7e4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDd8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D";
        return Scaffold(
          backgroundColor: context.color?.background,
          appBar: AppBar(
            elevation: 2,
            backgroundColor: context.color?.theme,
            title: SvgPicture.asset(
              Assets.appLogoSvg,
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
          bottomNavigationBar: NavigationBarWidget(
            currentIndex: controller.currentIndex,
            navbarItems: [
              controller.isAuthenticated
                  ? const (SvgIcon(browseIcon), "Browse")
                  : const (SvgIcon(homeIcon), "Home"),
              controller.isAuthenticated
                  ? const (SvgIcon(companyIcon), "Company")
                  : const (SvgIcon(browseIcon), "Browse"),
              controller.isAuthenticated
                  ? const (SvgIcon(dashboardIcon), "Dashboard")
                  : const (SvgIcon(loginIcon), "Login"),
              controller.isAuthenticated
                  ? const (SvgIcon(jobsIcon), "Job Alert")
                  : const (SvgIcon(pricingIcon), "Pricing"),
              const (SvgIcon(menuIcon), "Menu"),
            ],
            onItemClick: controller.changePage,
          ),
          body: PageView(
            controller: controller.pageController,
            onPageChanged: controller.onPageChange,
            children: const [
              BrowseScreen(),
              FindJobsPage(),
              Placeholder(),
              Placeholder(),
              Placeholder(),
            ],
          ),
        );
      },
    );
  }
}
