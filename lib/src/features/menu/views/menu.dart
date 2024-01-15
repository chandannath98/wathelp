import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/static/static_storage.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/services/theme/extensions/colors_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/extensions/string_extensions.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/menu_controller.dart';
import 'widgets/custom_list_tile.dart';
import 'widgets/job_pilots_list_today.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MenuPageWidget();
  }
}

class MenuPageWidget extends StatelessWidget {
  const MenuPageWidget({super.key});

  List<Widget> getAboutUsSection(MenuPageController controller) => [
        const Padding(
          padding: horizontal16,
          child: Text("About Us"),
        ),
        10.height,
        MenuPageListTile(
          onTap: controller.gotoBlogs,
          title: "Blog",
          icon: const Icon(Icons.receipt_outlined),
        ),
        MenuPageListTile(
          onTap: controller.gotoAbout,
          title: "About",
          icon: const Icon(Icons.person_outline_rounded),
        ),
        MenuPageListTile(
          onTap: controller.gotoContact,
          title: "Contact",
          icon: const Icon(Icons.mail_outline_rounded),
        ),
      ];

  List<Widget> getJobPilotSection(MenuPageController controller) => [
        const Padding(
          padding: horizontal16,
          child: Text("Jobpilots"),
        ),
        10.height,
        MenuJobPilotListTile(
          onTap: controller.gotoChooseLanguage,
          data: StaticStorage.selectedLanguage?.name ?? "English",
          title: LocaleKeys.languagekey.tr(),
          icon: const Icon(Icons.language_rounded),
        ),
        MenuJobPilotListTile(
          onTap: controller.gotoChooseCurrency,
          data: StaticStorage.selectedCurrency?.code ?? "USD",
          title: LocaleKeys.currency.tr(),
          icon: (StaticStorage.selectedCurrency?.symbol == null)
              ? const Icon(Icons.attach_money_rounded)
              : SizedBox.square(
                  dimension: 24,
                  child: FittedBox(
                    child: Text(
                      StaticStorage.selectedCurrency!.symbol!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
        ),
        MenuJobPilotListTile(
          onTap: controller.gotoChooseCountry,
          data: StaticStorage.selectedCountry?.name ?? "Bangladesh",
          title: LocaleKeys.country.tr(),
          icon: const Icon(Icons.flag_outlined),
        ),
        const CallNowWidget(
          phoneNumber: "(315) 155-1276",
        ),
        8.height,
        const Padding(
          padding: horizontal16,
          child: Text("Follow us on social media"),
        ),
        Padding(
          padding: horizontal3,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const SvgIcon(
                  Assets.facebookIcon,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const SvgIcon(
                  Assets.youtubeIcon,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const SvgIcon(
                  Assets.instagramIcon,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const SvgIcon(
                  Assets.twitterIcon,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ];

  List<Widget> getSupportSection(MenuPageController controller) => [
        const Padding(
          padding: horizontal16,
          child: Text("Support"),
        ),
        10.height,
        MenuPageListTile(
          onTap: controller.gotoFaq,
          title: "FAQ",
          icon: const Icon(Icons.question_mark_rounded),
        ),
        MenuPageListTile(
          onTap: controller.gotoPrivacyPolicy,
          title: "Privacy Policy",
          icon: const Icon(Icons.privacy_tip_outlined),
        ),
        MenuPageListTile(
          onTap: controller.gotoTermsAndConditions,
          title: "Terms & Conditions",
          icon: const Icon(Icons.school_outlined),
        ),
        MenuPageListTile(
          onTap: controller.gotoRefundPolicy,
          title: "Refund Policy",
          icon: const Icon(Icons.policy_outlined),
        ),
      ];

  List<Widget> getPageSection(MenuPageController controller) => [
        const Padding(
          padding: horizontal16,
          child: Text(
            "Pages",
          ),
        ),
        16.height,
        MenuPageListTile(
          onTap: controller.gotoHomePage,
          title: "Homepage",
          icon: const SvgIcon(Assets.homeIcon),
        ),
        MenuPageListTile(
          onTap: controller.gotoBrowsePage,
          title: "Browse Jobs",
          icon: const Icon(Icons.work_outline_rounded),
        ),
        /* MenuPageListTile(
          onTap: controller.gotoLogin,
          title: "Post Jobs",
          icon: const Icon(Icons.add_circle_outline),
        ), */
        MenuPageListTile(
          onTap: controller.browseEmployers,
          title: "Browse Employers",
          icon: const SvgIcon(Assets.companyIcon),
        ),
        /* MenuPageListTile(
          onTap: controller.gotoLogin,
          title: "Browse Candidates",
          icon: const Icon(Icons.people_outline_outlined),
        ),
        MenuPageListTile(
          onTap: controller.gotoPricing,
          title: "Pricing",
          icon: const Icon(Icons.account_balance_outlined),
        ), */
        MenuPageListTile(
          onTap: controller.gotoRegistration,
          title: "Create Account",
          icon: const Icon(Icons.person_add_alt_outlined),
        ),
        MenuPageListTile(
          onTap: controller.gotoLogin,
          title: "Sign In",
          icon: const SvgIcon(Assets.loginIcon),
        ),
      ];

  List<Widget> getCandidateSection(MenuPageController controller) => [
        Padding(
          padding: horizontal16,
          child: Text(
            AuthController.find.currentUserType!.name.upperCaseFirst,
          ),
        ),
        16.height,
        MenuPageListTile(
          onTap: controller.gotoDashboard,
          title: "Dashboard",
          icon: const SvgIcon(Assets.accountIcon),
        ),
        MenuPageListTile(
          onTap: controller.gotoAppliedJobs,
          title: "Applied Jobs",
          icon: const Icon(Icons.work_outline_rounded),
        ),
        MenuPageListTile(
          onTap: controller.gotoFavoriteJobs,
          title: "Favorite Jobs",
          icon: const Icon(Icons.bookmark_outline_rounded),
        ),
        MenuPageListTile(
          onTap: controller.gotoJobAlert,
          title: "Job Alert",
          icon: const SvgIcon(Assets.jobsIcon),
        ),
        MenuPageListTile(
          onTap: controller.gotoSettings,
          title: "Setting",
          icon: const Icon(Icons.settings_outlined),
        ),
        MenuPageListTile(
          onTap: controller.signOut,
          title: "Sign Out",
          icon: const Icon(Icons.logout),
        ),
      ];

  List<Widget> getOthersSection(MenuPageController controller) => [
        const Padding(
          padding: horizontal16,
          child: Text("Other pages"),
        ),
        10.height,
        MenuPageListTile(
          onTap: controller.gotoHomePage,
          title: "Homepage",
          icon: const SvgIcon(Assets.homeIcon),
        ),
        MenuPageListTile(
          onTap: controller.gotoBrowsePage,
          title: "Browse Jobs",
          icon: const Icon(Icons.work_outline_rounded),
        ),
        MenuPageListTile(
          onTap: controller.browseEmployers,
          title: "Browse Employers",
          icon: const SvgIcon(Assets.companyIcon),
        ),
        MenuPageListTile(
          onTap: controller.gotoBlogs,
          title: "Blogs",
          icon: const Icon(Icons.receipt_outlined),
        ),
        MenuPageListTile(
          onTap: controller.gotoAbout,
          title: "About",
          icon: const Icon(Icons.person_outline_rounded),
        ),
        MenuPageListTile(
          onTap: controller.gotoContact,
          title: "Contacts",
          icon: const Icon(Icons.mail_outline_rounded),
        ),
      ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: MenuPageController(),
        builder: (controller) {
          return Padding(
            padding: vertical8,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  16.height,
                  if (controller.isAuthenticated)
                    ...getCandidateSection(controller)
                  else
                    ...getPageSection(controller),

                  if (controller.isAuthenticated) ...[
                    24.height,
                    ...getOthersSection(controller),
                  ],
                  24.height,
                  // Jobpilot section.
                  ...getJobPilotSection(controller),
                  12.height,
                  if (!controller.isAuthenticated)
                    ...getAboutUsSection(controller),
                  24.height,
                  ...getSupportSection(controller),
                ],
              ),
            ),
          );
        });
  }
}

class CallNowWidget extends StatelessWidget {
  const CallNowWidget({
    super.key,
    required this.phoneNumber,
  });

  final String phoneNumber;

  _call() {
    try {
      final uri = Uri(scheme: "tel", path: phoneNumber);
      launchUrl(uri);
    } catch (e, s) {
      log("#NumberDialError", error: e, stackTrace: s);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _call,
      child: Padding(
        padding: horizontal16 + vertical3,
        child: RichText(
          text: TextSpan(
            style: context.text.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.color?.primary,
            ),
            children: [
              const WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Icon(
                  Icons.add_ic_call_outlined,
                ),
              ),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: 10.width,
              ),
              const TextSpan(text: "Call Now:  "),
              TextSpan(
                text: phoneNumber,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: context.color?.opposite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
