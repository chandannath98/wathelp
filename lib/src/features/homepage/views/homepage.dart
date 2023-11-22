import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/features/authentication/views/login_system_switcher.dart';
import 'package:jobpilot/src/features/browse_section/views/browse_screen.dart';
import 'package:jobpilot/src/features/dashboard/views/dashboard.dart';
import 'package:jobpilot/src/features/find_company/views/find_company.dart';
import 'package:jobpilot/src/features/find_jobs/views/find_jobs.dart';
import 'package:jobpilot/src/features/job_alert/views/job_alert.dart';
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
      init: HomepageController(),
      builder: (controller) {
        const profile =
            "https://images.unsplash.com/photo-1531891437562-4301cf35b7e4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDd8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D";
        return Scaffold(
          backgroundColor: context.color?.background,
          appBar: AppBar(
            elevation: 2,
            backgroundColor: context.color?.theme,
            title: SvgPicture.asset(Assets.appLogoSvg),
            actions: [
              HomepageActions(
                profilePic: profile,
                isAuthenticated: controller.isAuthenticated,
                showRegisterButton:
                    !controller.isAuthenticated && controller.isLoginScreen,
                onLoginClick: controller.onLoginClick,
                onRegisterClick: controller.onRegisterClick,
                onProfileClick: controller.onProfileClick.withOverlay,
                onNotificationClick: () => controller.onNotificationClick(),
              ),
            ],
          ),
          bottomNavigationBar: NavigationBarWidget(
            currentIndex: controller.currentIndex,
            navbarItems: [
              controller.isAuthenticated
                  ? const (SvgIcon(Assets.browseIcon), "Browse")
                  : const (SvgIcon(Assets.homeIcon), "Home"),
              controller.isAuthenticated
                  ? const (SvgIcon(Assets.companyIcon), "Company")
                  : const (SvgIcon(Assets.browseIcon), "Browse"),
              controller.isAuthenticated
                  ? const (SvgIcon(Assets.dashboardIcon), "Dashboard")
                  : const (SvgIcon(Assets.loginIcon), "Login"),
              controller.isAuthenticated
                  ? const (SvgIcon(Assets.jobsIcon), "Job Alert")
                  : const (SvgIcon(Assets.pricingIcon), "Pricing"),
              const (SvgIcon(Assets.menuIcon), "Menu"),
            ],
            onItemClick: controller.changePage,
          ),
          body: PageView(
            controller: controller.pageController,
            onPageChanged: controller.onPageChange,
            children: [
              controller.isAuthenticated
                  ? const FindJobsPage()
                  : const BrowseScreen(),
              controller.isAuthenticated
                  ? const FindCompanyPage()
                  : const FindJobsPage(),
              controller.isAuthenticated
                  ? const DashboardPage()
                  : const LoginSystemSwitcher(),
              controller.isAuthenticated
                  ? const JobAlertPageWidget()
                  : const PricingPage(),
              const MenuScreen(),
            ],
          ),
        );
      },
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Center(
        child: Text("Menu Page."),
      ),
    );
  }
}

class PricingPage extends StatelessWidget {
  const PricingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Center(
        child: Text("Pricing Page."),
      ),
    );
  }
}
