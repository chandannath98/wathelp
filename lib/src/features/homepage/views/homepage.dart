import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss, Trans;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/features/authentication/views/login_system_switcher.dart';
import 'package:jobpilot/src/features/browse_section/views/browse_screen.dart';
import 'package:jobpilot/src/features/account/views/account.dart';
import 'package:jobpilot/src/features/find_company/views/find_company.dart';
import 'package:jobpilot/src/features/find_jobs/views/find_jobs.dart';
import 'package:jobpilot/src/features/job_alert/views/job_alert.dart';
import 'package:jobpilot/src/features/menu/views/menu.dart';
import 'package:jobpilot/src/global/widgets/app/app_logo_app_bar.dart';
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
        return Scaffold(
          backgroundColor: context.color?.background,
          appBar: AppLogoAppBar(
            actions: [
              HomepageActions(
                profilePic: controller.currentUser?.photoUrl ?? "",
                isAuthenticated: controller.isAuthenticated,
                showRegisterButton:
                    !controller.isAuthenticated && controller.isLoginScreen,
                onLoginClick: controller.onLoginClick,
                onRegisterClick: controller.onRegisterClick,
                onProfileClick: controller.onProfileClick.withOverlay,
                onNotificationClick: controller.onNotificationClick,
              ),
            ],
          ),
          bottomNavigationBar: NavigationBarWidget(
            currentIndex: controller.currentIndex,
            navbarItems: [
              controller.isAuthenticated
                  ? (const SvgIcon(Assets.browseIcon), LocaleKeys.job.tr())
                  : (const SvgIcon(Assets.homeIcon), LocaleKeys.home.tr()),
              controller.isAuthenticated
                  ? (const SvgIcon(Assets.companyIcon), LocaleKeys.company.tr())
                  : (const SvgIcon(Assets.browseIcon), LocaleKeys.job.tr()),
              controller.isAuthenticated
                  ? (const SvgIcon(Assets.accountIcon), LocaleKeys.account.tr())
                  : (const SvgIcon(Assets.loginIcon), LocaleKeys.login.tr()),
              controller.isAuthenticated
                  ? (const SvgIcon(Assets.jobsIcon), LocaleKeys.job_alert.tr())
                  : (
                      const SvgIcon(Assets.companyIcon),
                      LocaleKeys.company.tr()
                    ),
              // :  (SvgIcon(Assets.pricingIcon), "Pricing"),
              (const SvgIcon(Assets.menuIcon), LocaleKeys.menu_settings.tr()),
            ],
            onItemClick: controller.changePage,
          ),
          body: PageView(
            controller: controller.pageController,
            onPageChanged: controller.onPageChange,
            children: [
              controller.isAuthenticated
                  ? const FindJobsPage()
                  : const BrowsePage(),
              controller.isAuthenticated
                  ? const FindCompanyPage()
                  : const FindJobsPage(),
              controller.isAuthenticated
                  ? const AccountPage()
                  : const LoginSystemSwitcher(),
              controller.isAuthenticated
                  ? const JobAlertPageWidget()
                  : const FindCompanyPage(),
              const MenuScreen(),
            ],
          ),
        );
      },
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
