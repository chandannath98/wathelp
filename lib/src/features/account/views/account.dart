import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/account/controllers/account_controller.dart';
import 'package:jobpilot/src/features/account/views/widgets/complete_profile.dart';

import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/services/theme/extensions/colors_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

import 'widgets/applied_job_card.dart';
import 'widgets/dashboard_data_tile.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      autoRemove: false,
      dispose: (state) => false,
      init: AccountController(),
      builder: (controller) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: all16,
                child: controller.isLoading
                    ? const LoadingIndicator()
                    : AccountTopSection(
                        controller: controller,
                      ),
              ),
            ),
            if (!(controller.dashboardData?.isProfileCompleat ?? false))
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
                    (controller.currentAppliedJobList == null)
                        ? const SizedBox(
                            height: 300,
                            child: Center(
                              child: LoadingIndicator(),
                            ),
                          )
                        : ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: List.generate(
                              controller.currentAppliedJobList!.length,
                              (index) => AppliedJobCardWidget(
                                jobData:
                                    controller.currentAppliedJobList![index],
                                onViewDetailsTap:
                                    controller.onViewJobDetailsTap,
                              ),
                            ),
                          ),
                    16.height,
                    if (controller.currentAppliedJobList?.isNotEmpty ??
                        false) ...[
                      InkWell(
                        onTap: controller.onViewAllJobsTap,
                        child: Padding(
                          padding: horizontal8 + vertical3,
                          child: Text(
                            "View All Applied Jobs",
                            style: context.text.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: context.color?.primary,
                            ),
                          ),
                        ),
                      ),
                      16.height,
                    ],
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

class AccountTopSection extends StatelessWidget {
  const AccountTopSection({
    super.key,
    required this.controller,
  });

  final AccountController controller;

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
          data: "${controller.dashboardData?.appliedJobs ?? "??"}",
          title: "Applied Jobs",
          icon: const Icon(
            Icons.work_outline_rounded,
          ),
          iconColor: context.color?.primary ?? Colors.blue,
          onTap: () {},
        ),
        12.height,
        DashboardDataTile(
          data: "${controller.dashboardData?.favoriteJobs ?? "??"}",
          title: "Favorite Jobs",
          icon: const Icon(
            Icons.bookmark_border_rounded,
          ),
          iconColor: Colors.amber,
          onTap: () {},
        ),
        12.height,
        DashboardDataTile(
          data: "${controller.dashboardData?.notifications ?? "??"}",
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
