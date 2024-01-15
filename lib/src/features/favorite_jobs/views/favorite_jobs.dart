import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/favorite_jobs/controller/favorite_jobs_controller.dart';
import 'package:jobpilot/src/global/widgets/app/single_job_card.dart';
import 'package:jobpilot/src/global/widgets/circular_paginator.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class FavoriteJobsScreen extends StatelessWidget {
  const FavoriteJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoriteJobsController>(
      init: FavoriteJobsController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            title: const Text("Favorite Jobs"),
          ),
          body: CustomScrollView(
            slivers: [
              if (controller.isLoading || controller.jobsList != null)
                SliverPadding(
                  padding: horizontal16 + vertical8,
                  sliver: controller.isLoading
                      ? const SliverFillRemaining(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: LoadingIndicator(),
                          ),
                        )
                      : SliverList.builder(
                          itemBuilder: (context, index) {
                            final job = controller.jobsList![index];
                            return Padding(
                              padding: vertical6,
                              child: SingleJobCard(
                                bgColor: Colors.white,
                                bookmarked: null,
                                postType: job.jobType ?? "",
                                companyName: job.companyName ?? "",
                                postName: job.title ?? "",
                                companyLocation: job.country ?? "",
                                salaryRange:
                                    "\$${job.minSalary} - ${job.maxSalary}",
                                companyIcon: job.companyLogo ?? "",
                                onItemClick: () =>
                                    controller.onJobClick(job.slug!),
                              ),
                            );
                          },
                          itemCount: controller.jobsList!.length,
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
                        controller.paginationMetaData!.lastPage!,
                        (index) => (index + 1),
                      )
                          .map((index) => (
                                index == controller.currentPageIndex,
                                Text((index <= 9) ? "0$index" : "$index"),
                                (index == controller.currentPageIndex)
                                    ? () {}
                                    : () => controller.fetchFavoriteJobsList(
                                          pageIndex: index,
                                        ),
                              ))
                          .toList(),
                      onForwardClick: controller.navLinks?.next == null
                          ? null
                          : () => controller.fetchFavoriteJobsList(
                              pageIndex: controller.currentPageIndex + 1),
                      onBackwardClick: controller.navLinks?.prev == null
                          ? null
                          : () => controller.fetchFavoriteJobsList(
                                pageIndex: controller.currentPageIndex - 1,
                              ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: 16.height,
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
