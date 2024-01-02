import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/single_company/controllers/single_company_controller.dart';
import 'package:jobpilot/src/global/widgets/app/single_job_card.dart';
import 'package:jobpilot/src/global/widgets/circular_paginator.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class SingleCompanyOpenJobsScreen extends StatelessWidget {
  const SingleCompanyOpenJobsScreen({
    super.key,
    this.userName,
    this.controller,
  }) : assert(
          !(userName == null && controller == null),
          "BOTH (userName) AND (controller) CAN'T BE NULL TOGETHER!",
        );

  final String? userName;
  final SingleCompanyController? controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SingleCompanyController>(
      init: controller ??
          SingleCompanyController(
            userName: userName!,
          ),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            title: Text(controller.companyUser?.name ?? ""),
          ),
          body: CustomScrollView(
            slivers: [
              if (controller.isLoading || controller.openJobs != null)
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
                              final job = controller.openJobs![index];
                              return Padding(
                                padding: vertical6,
                                child: SingleFeaturedJobCard(
                                  bgColor: Colors.white,
                                  bookmarked: null,
                                  postType: job.jobType?.name ?? "",
                                  companyName: job.company?.user?.name ?? "",
                                  postName: job.title ?? "",
                                  companyLocation: job.country ?? "",
                                  salaryRange:
                                      "\$${job.minSalary} - ${job.maxSalary}",
                                  companyIcon: job.company?.logo ?? "",
                                  onItemClick: () =>
                                      controller.onOpenJobClick(job.slug!),
                                ),
                              );
                            },
                            childCount: controller.openJobs!.length,
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
                                    : () => controller.fetchCompanyDetails(
                                          index: index,
                                        ),
                              ))
                          .toList(),
                      onForwardClick:
                          controller.paginationData?.nextPageUrl == null
                              ? null
                              : () => controller.fetchCompanyDetails(
                                  index: controller.currentPageIndex + 1),
                      onBackwardClick:
                          controller.paginationData?.prevPageUrl == null
                              ? null
                              : () => controller.fetchCompanyDetails(
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
          ),
        );
      },
    );
  }
}
