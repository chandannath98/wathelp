import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/settings/views/personal_tab.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/services/theme/extensions/colors_theme.dart';

import 'contact_tab.dart';
import 'profile_tab.dart';
import 'social_tab.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          LocaleKeys.settings.tr(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ColoredBox(
            color: context.color?.theme ?? Colors.white,
            child: Padding(
              padding: horizontal16,
              child: TabBar(
                isScrollable: true,
                padding: EdgeInsets.zero,
                labelPadding: const EdgeInsets.only(right: 24),
                indicatorPadding: const EdgeInsets.only(right: 24),
                controller: tabController,
                labelColor: context.color?.primary,
                indicatorColor: context.color?.primary,
                unselectedLabelColor: context.color?.opposite,
                labelStyle: context.text.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                tabs: [
                  (LocaleKeys.basic.tr()),
                  (LocaleKeys.profile.tr()),
                  (LocaleKeys.social_media.tr()),
                  (LocaleKeys.contact.tr()),
                ]
                    .map(
                      (text) => Padding(
                        padding: vertical12,
                        child: Text(
                          text,
                        ),
                      ),
                    )
                    .toList(growable: false),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                PersonalInformationTab(),
                ProfileInformationTab(),
                SocialInformationTab(),
                ContactSettingsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
