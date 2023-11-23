import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/dashboard/controllers/dashboard_controller.dart';
import 'package:jobpilot/src/features/dashboard/views/widgets/complete_profile.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/services/theme/extensions/colors_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

import 'widgets/applied_job_card.dart';
import 'widgets/dashboard_data_tile.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: DashboardController(),
      builder: (controller) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: all16,
                child: DashboardTopSection(
                  controller: controller,
                ),
              ),
            ),
            // if (controller.currentProfile.profileComplete == 0)
            const SliverPadding(
              padding: vertical16,
              sliver: SliverToBoxAdapter(
                child: CompleteProfileSection(),
              ),
            ),
            SliverPadding(
              padding: all16,
              sliver: SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    Text(
                      "Recently Applied Jobs",
                      style: context.text.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    10.height,
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(
                        10,
                        (index) => const AppliedJobCardWidget(),
                      ),
                    ),
                    16.height,
                    InkWell(
                      onTap: () {
                        print("Click");
                      },
                      child: Text(
                        "Load More Vacancies",
                        style: context.text.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.color?.primary,
                        ),
                      ),
                    ),
                    16.height,
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class DashboardTopSection extends StatelessWidget {
  const DashboardTopSection({
    super.key,
    required this.controller,
  });

  final DashboardController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Hello, ${controller.currentProfile.name}",
          style: context.text.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        4.height,
        const Text(
          "Here is your daily activities and job alerts.",
        ),
        12.height,
        DashboardDataTile(
          data: "589",
          title: "Applied Jobs",
          icon: const Icon(
            Icons.work_outline_rounded,
          ),
          iconColor: context.color?.primary ?? Colors.blue,
          onTap: () {},
        ),
        12.height,
        DashboardDataTile(
          data: "238",
          title: "Favorite Jobs",
          icon: const Icon(
            Icons.bookmark_border_rounded,
          ),
          iconColor: Colors.amber,
          onTap: () {},
        ),
        12.height,
        DashboardDataTile(
          data: "574",
          title: "Job Alerts",
          icon: const Center(
            child: SvgIcon(
              Assets.jobsIcon,
            ),
          ),
          iconColor: Colors.red.shade900,
          onTap: () {},
        ),
      ],
    );
  }
}
