import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/services/theme/extensions/colors_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: vertical8,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            16.height,
            const Padding(
              padding: horizontal16,
              child: Text("Pages"),
            ),
            16.height,
            MenuPageListTile(
              onTap: () {},
              title: "Homepage",
              icon: const SvgIcon(Assets.homeIcon),
            ),
            MenuPageListTile(
              onTap: () {},
              title: "Browse Jobs",
              icon: const Icon(Icons.work_outline_rounded),
            ),
            MenuPageListTile(
              onTap: () {},
              title: "Post Jobs",
              icon: const Icon(Icons.add_circle_outline),
            ),
            MenuPageListTile(
              onTap: () {},
              title: "Browse Employees",
              icon: const SvgIcon(Assets.companyIcon),
            ),
            MenuPageListTile(
              onTap: () {},
              title: "Browse Candidates",
              icon: const Icon(Icons.people_outline_outlined),
            ),
            MenuPageListTile(
              onTap: () {},
              title: "Pricing",
              icon: const Icon(Icons.account_balance_outlined),
            ),
            MenuPageListTile(
              onTap: () {},
              title: "Create Account",
              icon: const Icon(Icons.person_add_alt_outlined),
            ),
            MenuPageListTile(
              onTap: () {},
              title: "Sign In",
              icon: const SvgIcon(Assets.loginIcon),
            ),
            24.height,
            const Padding(
              padding: horizontal16,
              child: Text("Job Pilots"),
            ),
            10.height,
            MenuJobPilotListTile(
              onTap: () {},
              data: "English",
              title: "Language",
              icon: const Icon(Icons.language_rounded),
            ),
            MenuJobPilotListTile(
              onTap: () {},
              data: "USD",
              title: "Currency",
              icon: const Icon(Icons.attach_money_rounded),
            ),
            MenuJobPilotListTile(
              onTap: () {},
              data: "Bangladesh",
              title: "Country",
              icon: const Icon(Icons.flag_outlined),
            ),
            const CallNowWidget(),
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
            12.height,
            const Padding(
              padding: horizontal16,
              child: Text("About Us"),
            ),
            10.height,
            MenuPageListTile(
              onTap: () {},
              title: "Blogs",
              icon: const Icon(Icons.receipt_outlined),
            ),
            MenuPageListTile(
              onTap: () {},
              title: "About",
              icon: const Icon(Icons.person_outline_rounded),
            ),
            MenuPageListTile(
              onTap: () {},
              title: "Contacts",
              icon: const Icon(Icons.mail_outline_rounded),
            ),
            24.height,
            const Padding(
              padding: horizontal16,
              child: Text("Supports"),
            ),
            10.height,
            MenuPageListTile(
              onTap: () {},
              title: "FAQs",
              icon: const Icon(Icons.question_mark_rounded),
            ),
            MenuPageListTile(
              onTap: () {},
              title: "Privacy Policy",
              icon: const Icon(Icons.privacy_tip_outlined),
            ),
            MenuPageListTile(
              onTap: () {},
              title: "Terms & Conditions",
              icon: const Icon(Icons.school_outlined),
            ),
            MenuPageListTile(
              onTap: () {},
              title: "Refund Policy",
              icon: const Icon(Icons.policy_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

class CallNowWidget extends StatelessWidget {
  const CallNowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
                text: "(315) 155-1276",
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
