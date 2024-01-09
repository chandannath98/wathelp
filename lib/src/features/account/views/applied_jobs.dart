import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/account/controllers/account_controller.dart';
import 'package:jobpilot/src/global/widgets/circular_paginator.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/extensions/colors_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

import 'widgets/applied_job_card.dart';

class AppliedJobsScreen extends StatelessWidget {
  const AppliedJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text(
          "Applied Jobs",
        ),
      ),
      body: GetBuilder<AccountController>(
        builder: (controller) {
          return CustomScrollView(
            slivers: [
              if (controller.isLoading ||
                  controller.currentAppliedJobList != null)
                SliverPadding(
                  padding: horizontal16 + vertical8,
                  sliver: controller.isLoading
                      ? const SliverFillRemaining(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: LoadingIndicator(),
                          ),
                        )
                      : SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              final job =
                                  controller.currentAppliedJobList![index];
                              return AppliedJobCardWidget(
                                jobData: job,
                                onViewDetailsTap:
                                    controller.onViewJobDetailsTap,
                              );
                            },
                            childCount:
                                controller.currentAppliedJobList!.length,
                          ),
                        ),
                ),
              if (controller.needPaginationControl) ...[
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
                                        controller.getCandidateAppliedJobList(
                                          index: index,
                                        ),
                              ))
                          .toList(),
                      onForwardClick:
                          controller.paginationData?.nextPageUrl == null
                              ? null
                              : () => controller.getCandidateAppliedJobList(
                                  index: controller.currentPageIndex + 1),
                      onBackwardClick:
                          controller.paginationData?.prevPageUrl == null
                              ? null
                              : () => controller.getCandidateAppliedJobList(
                                    index: controller.currentPageIndex - 1,
                                  ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: 16.height,
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
