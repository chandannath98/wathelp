import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/browse_section/views/widgets/search_box.dart';
import 'package:jobpilot/src/features/find_jobs/controllers/find_jobs_controller.dart';
import 'package:jobpilot/src/global/widgets/app/single_job_card.dart';
import 'package:jobpilot/src/global/widgets/circular_paginator.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

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
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: FindJobsSettings(
                  controller: controller,
                ),
              ),
              SliverPadding(
                padding: horizontal16 + vertical8,
                sliver: controller.isLoading
                    ? const SliverToBoxAdapter(
                        child: LoadingIndicator(),
                      )
                    : SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            final job = controller.currentJobList[index];

                            return Padding(
                              padding: vertical6,
                              child: SingleFeaturedJobCard(
                                bgColor: Colors.white,
                                bookmarked: false,
                                postType: job.jobType ?? "",
                                companyName: job.companyName ?? "",
                                postName: job.title ?? "",
                                companyLocation: job.country ?? "",
                                salaryRange: "\$${job.salary}",
                                companyIcon: job.companyLogo ?? "",
                                onBookmarkCallback: () {},
                                onItemClick: () =>
                                    controller.onJobClick(job.slug ?? ""),
                              ),
                            );
                          },
                          childCount: controller.currentJobList.length,
                        ),
                      ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: (vertical12 + horizontal16) + horizontal16,
                  child: CircularPaginatorWidget(
                    selectedColor: context.color?.primary ?? Colors.blue,
                    actionsList: List.generate(15, (index) => (index + 1))
                        .map((index) => (
                              index == 1,
                              Text((index <= 9) ? "0$index" : "$index"),
                              () {},
                            ))
                        .toList(),
                    onForwardClick: () {},
                  ),
                ),
              ),
            ],
          );
        });
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
                : controller.fetchJobsWithCurrentQuery,
            onFilterClick: controller.goToFilterPage,
            showFilterButton: true,
          ),
          12.height,
          Text(
            "Popular searches:",
            style: context.text.bodySmall,
          ),
          8.height,
          Wrap(
            spacing: 12,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              "Front-end",
              "Back-end",
              "Bootstrap",
              "Development",
              "Team Lead",
              "Project Manager",
              "Front-end",
              "Back-end",
              "Bootstrap",
              "PHP",
              "Development",
              "Team Lead",
              "Project Manager",
            ]
                .map(
                  (type) => PopularSearchOptionWidget(
                    type: type,
                    isSelected: "PHP" == type,
                  ),
                )
                .toList(),
          ),
          8.height,
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
