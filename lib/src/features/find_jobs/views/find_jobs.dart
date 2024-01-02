import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/features/browse_section/views/widgets/search_box.dart';
import 'package:jobpilot/src/features/find_jobs/controllers/find_jobs_controller.dart';
import 'package:jobpilot/src/global/widgets/app/single_job_card.dart';
import 'package:jobpilot/src/global/widgets/circular_paginator.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/extensions/string_extensions.dart';

class FindJobScreen extends StatelessWidget {
  const FindJobScreen({
    super.key,
    this.query,
    this.searchText,
    this.locationText,
  });

  final String? searchText;
  final String? locationText;
  final SearchQuery? query;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: context.color?.theme,
        title: SvgPicture.asset(Assets.appLogoSvg),
      ),
      body: GetBuilder(
        autoRemove: true,
        tag: "#FIND_JOB_SCREEN",
        init: FindJobController(
          query: query,
          searchText: searchText,
          locationText: locationText,
        ),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: JobSearchWidget(
              controller: controller,
            ),
          );
        },
      ),
    );
  }
}

class FindJobsPage extends StatelessWidget {
  const FindJobsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      autoRemove: false,
      dispose: (state) => false,
      init: FindJobController(),
      builder: (controller) {
        return JobSearchWidget(
          controller: controller,
        );
      },
    );
  }
}

class JobSearchWidget extends StatelessWidget {
  const JobSearchWidget({
    super.key,
    required this.controller,
  });

  final FindJobController controller;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: FindJobsSettings(
            controller: controller,
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
                : SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final job = controller.currentJobList![index];
                        return Padding(
                          padding: vertical6,
                          child: SingleFeaturedJobCard(
                            bgColor: Colors.white,
                            bookmarked: job.bookmarked,
                            postType: job.jobType ?? "",
                            companyName: job.companyName ?? "",
                            postName: job.title ?? "",
                            companyLocation: job.country ?? "",
                            salaryRange: "\$${job.salary}",
                            companyIcon: job.companyLogo ?? "",
                            onBookmarkCallback: (() =>
                                    controller.onBookmarkJobClick(job.id!))
                                .withOverlay,
                            onItemClick: () =>
                                FindJobController.onJobClick(job.slug ?? ""),
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
                              : () => controller.fetchJobsWithCurrentQuery(
                                    index: index,
                                  ),
                        ))
                    .toList(),
                onForwardClick: controller.paginationData?.nextPageUrl == null
                    ? null
                    : () => controller.fetchJobsWithCurrentQuery(
                        index: controller.currentPageIndex + 1),
                onBackwardClick: controller.paginationData?.prevPageUrl == null
                    ? null
                    : () => controller.fetchJobsWithCurrentQuery(
                          index: controller.currentPageIndex - 1,
                        ),
              ),
            ),
          ),
      ],
    );
  }
}

class FindJobsSettings extends StatelessWidget {
  const FindJobsSettings({
    super.key,
    required this.controller,
  });
  final FindJobController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          18.height,
          Text(
            "Find Jobs",
            style: context.text.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          18.height,
          SearchBoxWidget(
            searchController: controller.searchController,
            locationController: controller.locationController,
            onSearchClick: controller.isLoading
                ? null
                : () => controller.fetchJobsWithCurrentQuery(index: 1),
            onFilterClick: controller.goToFilterPage,
            showFilterButton: true,
          ),
          12.height,
          Text(
            "Popular searches:",
            style: context.text.bodySmall,
          ),
          8.height,
          if (controller.popularTags?.isNotEmpty ?? true) ...[
            Wrap(
              spacing: 12,
              runSpacing: 8,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: (controller.popularTags == null)
                  ? const [
                      PopularSearchOptionWidget(
                        type: "...",
                        isSelected: false,
                      ),
                      PopularSearchOptionWidget(
                        type: "...",
                        isSelected: false,
                      ),
                    ]
                  : controller.popularTags!
                      .map(
                        (type) => PopularSearchOptionWidget(
                          isSelected: false,
                          type: type.name!.upperCaseFirst,
                        ),
                      )
                      .toList(),
            ),
            8.height,
          ],
        ],
      ),
    );
  }
}

class PopularSearchOptionWidget extends StatelessWidget {
  const PopularSearchOptionWidget({
    super.key,
    required this.type,
    required this.isSelected,
  });

  final String type;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final actualText = Text(
      type,
      style: context.text.bodySmall?.copyWith(
        color: context.color?.opposite,
        fontWeight: FontWeight.bold,
      ),
    );
    return (isSelected)
        ? DecoratedBox(
            decoration: BoxDecoration(
              color: context.color?.theme,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: horizontal10 + vertical6,
              child: actualText,
            ),
          )
        : actualText;
  }
}
