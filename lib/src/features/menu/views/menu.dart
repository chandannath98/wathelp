import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/static/static_storage.dart';
import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/services/theme/extensions/colors_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
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
        Padding(
          padding: horizontal16,
          child: Text(LocaleKeys.about_us.tr()),
        ),
        10.height,
        MenuPageListTile(
          onTap: controller.gotoBlogs,
          title: LocaleKeys.blog.tr(),
          icon: const Icon(Icons.receipt_outlined),
        ),
        MenuPageListTile(
          onTap: controller.gotoAbout,
          title: LocaleKeys.about.tr(),
          icon: const Icon(Icons.person_outline_rounded),
        ),
        MenuPageListTile(
          onTap: controller.gotoContact,
          title: LocaleKeys.contact.tr(),
          icon: const Icon(Icons.mail_outline_rounded),
        ),
      ];

  List<Widget> getJobPilotSection(MenuPageController controller) => [
        // const Padding(
        //   padding: horizontal16,
        //   child: Text("Jobpilots"),
        // ),
        // 10.height,
        // MenuJobPilotListTile(
        //   onTap: controller.gotoChooseLanguage,
        //   data: StaticStorage.selectedLanguage?.name ?? "English",
        //   title: LocaleKeys.languagekey.tr(),
        //   icon: const Icon(Icons.language_rounded),
        // ),
        // MenuJobPilotListTile(
        //   onTap: controller.gotoChooseCurrency,
        //   data: StaticStorage.selectedCurrency?.code ?? "USD",
        //   title: LocaleKeys.currency.tr(),
        //   icon: (StaticStorage.selectedCurrency?.symbol == null)
        //       ? const Icon(Icons.attach_money_rounded)
        //       : SizedBox.square(
        //           dimension: 24,
        //           child: FittedBox(
        //             child: Text(
        //               StaticStorage.selectedCurrency!.symbol!,
        //               style: const TextStyle(
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //           ),
        //         ),
        // ),
        // MenuJobPilotListTile(
        //   onTap: controller.gotoChooseCountry,
        //   data: StaticStorage.selectedCountry?.name ?? "Bangladesh",
        //   title: LocaleKeys.country.tr(),
        //   icon: const Icon(Icons.flag_outlined),
        // ),
        // const CallNowWidget(
        //   phoneNumber: "(315) 155-1276",
        // ),
        // 8.height,
        // Padding(
        //   padding: horizontal16,
        //   child: Text(LocaleKeys.follow_us.tr()),
        // ),
        // Padding(
          // padding: horizontal3,
          // child: Row(
          //   children: [
          //     IconButton(
          //       onPressed: () async {
          //         try {
          //           final uri = Uri.parse(API.appFacebook);
          //           if (await canLaunchUrl(uri)) {
          //             launchUrl(uri);
          //           } else {
          //             log("Can't launch URL");
          //           }
          //         } catch (e, s) {
          //           log("#LinkOpenUrlError", error: e, stackTrace: s);
          //         }
          //       },
          //       icon: const SvgIcon(
          //         Assets.facebookIcon,
          //         size: 20,
          //       ),
          //     ),
          //     IconButton(
          //       onPressed: () {},
          //       icon: const SvgIcon(
          //         Assets.youtubeIcon,
          //         size: 20,
          //       ),
          //     ),
          //     IconButton(
          //       onPressed: () {},
          //       icon: const SvgIcon(
          //         Assets.instagramIcon,
          //         size: 20,
          //       ),
          //     ),
          //     IconButton(
          //       onPressed: () {},
          //       icon: const SvgIcon(
          //         Assets.twitterIcon,
          //         size: 20,
          //       ),
          //     ),
        //     ],
        //   ),
        // ),
      ];

  List<Widget> getSupportSection(MenuPageController controller) => [
        // Padding(
        //   padding: horizontal16,
        //   child: Text(LocaleKeys.support.tr()),
        // ),
        // 10.height,
        // MenuPageListTile(
        //   onTap: controller.gotoFaq,
        //   title: LocaleKeys.faq.tr(),
        //   icon: const Icon(Icons.question_mark_rounded),
        // ),
        // MenuPageListTile(
        //   onTap: controller.gotoPrivacyPolicy,
        //   title: LocaleKeys.privacy_policy.tr(),
        //   icon: const Icon(Icons.privacy_tip_outlined),
        // ),
        // MenuPageListTile(
        //   onTap: controller.gotoTermsAndConditions,
        //   title: LocaleKeys.terms_condition.tr(),
        //   icon: const Icon(Icons.school_outlined),
        // ),
        // MenuPageListTile(
        //   onTap: controller.gotoRefundPolicy,
        //   title: LocaleKeys.refund_policy.tr(),
        //   icon: const Icon(Icons.policy_outlined),
        // ),
      ];

  List<Widget> getPageSection(MenuPageController controller) => [
        // Padding(
        //   padding: horizontal16,
        //   child: Text(
        //     LocaleKeys.page.tr(),
        //   ),
        // ),
        // 16.height,
        // MenuPageListTile(
        //   onTap: controller.gotoHomePage,
        //   title: LocaleKeys.home.tr(),
        //   icon: const SvgIcon(Assets.homeIcon),
        // ),
        // MenuPageListTile(
        //   onTap: controller.gotoBrowsePage,
        //   title: LocaleKeys.browse_jobs.tr(),
        //   icon: const Icon(Icons.work_outline_rounded),
        // ),
        // /* MenuPageListTile(
        //   onTap: controller.gotoLogin,
        //   title: "Post Jobs",
        //   icon: const Icon(Icons.add_circle_outline),
        // ), */
        // MenuPageListTile(
        //   onTap: controller.browseEmployers,
        //   title: LocaleKeys.browse_employers.tr(),
        //   icon: const SvgIcon(Assets.companyIcon),
        // ),
        // /* MenuPageListTile(
        //   onTap: controller.gotoLogin,
        //   title: "Browse Candidates",
        //   icon: const Icon(Icons.people_outline_outlined),
        // ),
        // MenuPageListTile(
        //   onTap: controller.gotoPricing,
        //   title: "Pricing",
        //   icon: const Icon(Icons.account_balance_outlined),
        // ), */
        // MenuPageListTile(
        //   onTap: controller.gotoRegistration,
        //   title: LocaleKeys.create_account.tr(),
        //   icon: const Icon(Icons.person_add_alt_outlined),
        // ),
        // MenuPageListTile(
        //   onTap: controller.gotoLogin,
        //   title: LocaleKeys.sign_in.tr(),
        //   icon: const SvgIcon(Assets.loginIcon),
        // ),
      ];

  List<Widget> getCandidateSection(MenuPageController controller) => [
        Padding(
          padding: horizontal16,
          child: Text(
            AuthController.find.currentUserType!.name.tr(),
          ),
        ),
        16.height,
        MenuPageListTile(
          onTap: controller.gotoDashboard,
          title: LocaleKeys.dashboard.tr(),
          icon: const SvgIcon(Assets.accountIcon),
        ),
        MenuPageListTile(
          onTap: controller.gotoAppliedJobs,
          title: LocaleKeys.applied_jobs.tr(),
          icon: const Icon(Icons.work_outline_rounded),
        ),
        MenuPageListTile(
          onTap: controller.gotoFavoriteJobs,
          title: LocaleKeys.favorite_jobs.tr(),
          icon: const Icon(Icons.bookmark_outline_rounded),
        ),
        MenuPageListTile(
          onTap: controller.gotoJobAlert,
          title: LocaleKeys.job_alert.tr(),
          icon: const SvgIcon(Assets.jobsIcon),
        ),
        MenuPageListTile(
          onTap: controller.gotoSettings,
          title: LocaleKeys.settings.tr(),
          icon: const Icon(Icons.settings_outlined),
        ),
        MenuPageListTile(
          onTap: controller.signOut,
          title: LocaleKeys.log_out.tr(),
          icon: const Icon(Icons.logout),
        ),
      ];

  List<Widget> getOthersSection(MenuPageController controller) => [
        Padding(
          padding: horizontal16,
          child: Text(LocaleKeys.others.tr()),
        ),
        10.height,
        MenuPageListTile(
          onTap: controller.gotoHomePage,
          title: LocaleKeys.home.tr(),
          icon: const SvgIcon(Assets.homeIcon),
        ),
        MenuPageListTile(
          onTap: controller.gotoBrowsePage,
          title: LocaleKeys.browse_jobs.tr(),
          icon: const Icon(Icons.work_outline_rounded),
        ),
        MenuPageListTile(
          onTap: controller.browseEmployers,
          title: LocaleKeys.browse_employers.tr(),
          icon: const SvgIcon(Assets.companyIcon),
        ),
        MenuPageListTile(
          onTap: controller.gotoBlogs,
          title: LocaleKeys.blog.tr(),
          icon: const Icon(Icons.receipt_outlined),
        ),
        MenuPageListTile(
          onTap: controller.gotoAbout,
          title: LocaleKeys.about.tr(),
          icon: const Icon(Icons.person_outline_rounded),
        ),
        MenuPageListTile(
          onTap: controller.gotoContact,
          title: LocaleKeys.contact.tr(),
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
              TextSpan(text: "${LocaleKeys.call_now.tr()}:  "),
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
