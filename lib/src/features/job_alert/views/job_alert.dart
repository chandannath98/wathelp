import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/job_alert/controllers/job_alert_controller.dart';
import 'package:jobpilot/src/features/job_alert/views/widgets/new_job.dart';
import 'package:jobpilot/src/features/single_job/views/job_details.dart';
import 'package:jobpilot/src/global/widgets/circular_paginator.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

class JobAlertPageWidget extends StatelessWidget {
  const JobAlertPageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: JobAlertController(),
        builder: (controller) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: horizontal16,
                  child: Column(
                    children: [
                      16.height,
                      Row(
                        children: [
                          Text(
                            "Job Alerts",
                            style: context.text.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              //TODO: Uncomment this when [EditAlertJob] UI and system arrives!
                              /* child: TextButton.icon(
                                onPressed: () {},
                                icon: const SvgIcon(
                                  Assets.editIcon,
                                ),
                                label: const Text(
                                  "Edit Job Alerts",
                                ),
                              ), */
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              if (controller.isLoading || controller.currentJobList != null)
                SliverPadding(
                  padding: horizontal16 + vertical8,
                  sliver: controller.isLoading
                      ? const SliverFillRemaining(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: LoadingIndicator(),
                          ),
                        )
                      : controller.currentJobList!.isEmpty
                          ? const SliverFillRemaining(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.center,
                                child: Text(
                                  "No jobs found!",
                                ),
                              ),
                            )
                          : SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  final job = controller.currentJobList![index];
                                  return Padding(
                                    padding: vertical6,
                                    child: SingleJobAlertWidget(
                                      jobData: job,
                                      onApplyNow: () => Get.to(
                                        () => JobDetailsScreen(
                                          jobSlug: job.slug!,
                                        ),
                                      ),
                                      onBookmark: () => Get.to(
                                        () => JobDetailsScreen(
                                          jobSlug: job.slug!,
                                        ),
                                      ),
                                      onCardTap: () => Get.to(
                                        () => JobDetailsScreen(
                                          jobSlug: job.slug!,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                childCount: controller.currentJobList!.length,
                              ),
                            ),
                ),
              if (controller.needPaginationControl)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: (vertical12 + horizontal16) + horizontal16,
                    child: CircularPaginatorWidget(
                      selectedIndex: controller.currentPageIndex,
                      scrollController: controller.pageScrollController,
                      selectedColor: context.color?.primary ?? Colors.blue,
                      controlColor: context.color?.theme ?? Colors.white,
                      actionsList: List.generate(
                        controller.paginationData!.lastPage!,
                        (index) => (index + 1),
                      )
                          .map((index) => (
                                index == controller.currentPageIndex,
                                Text((index <= 9) ? "0$index" : "$index"),
                                (index == controller.currentPageIndex)
                                    ? () {}
                                    : () =>
                                        controller.fetchJobAlerts(index: index),
                              ))
                          .toList(),
                      onForwardClick:
                          controller.paginationData?.nextPageUrl == null
                              ? null
                              : () => controller.fetchJobAlerts(
                                  index: controller.currentPageIndex + 1),
                      onBackwardClick:
                          controller.paginationData?.prevPageUrl == null
                              ? null
                              : () => controller.fetchJobAlerts(
                                    index: controller.currentPageIndex - 1,
                                  ),
                    ),
                  ),
                ),
            ],
          );
        });
  }
}
