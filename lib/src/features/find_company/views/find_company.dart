import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/browse_section/views/widgets/search_box.dart';
import 'package:jobpilot/src/features/find_company/controllers/find_company_controllers.dart';
import 'package:jobpilot/src/global/widgets/app/app_logo_app_bar.dart';
import 'package:jobpilot/src/global/widgets/app/single_company_card.dart';
import 'package:jobpilot/src/global/widgets/circular_paginator.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/extensions/string_extensions.dart';

class FindCompanyScreen extends StatelessWidget {
  const FindCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppLogoAppBar(
        centerTitle: true,
        autoLeading: true,
      ),
      body: FindCompanyPage(),
    );
  }
}

class FindCompanyPage extends StatelessWidget {
  const FindCompanyPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: FindCompanyController(),
        builder: (controller) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: FindCompanySettings(controller: controller),
              ),
              if (controller.isLoading || controller.currentCompanyList != null)
                SliverPadding(
                  padding: horizontal16 + vertical8,
                  sliver: controller.isLoading
                      ? const SliverFillRemaining(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: LoadingIndicator(),
                          ),
                        )
                      : controller.currentCompanyList!.isEmpty
                          ? const SliverFillRemaining(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.center,
                                child: Text(
                                  "No company found!",
                                ),
                              ),
                            )
                          : SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  final company =
                                      controller.currentCompanyList![index];
                                  return Padding(
                                    padding: vertical6,
                                    child: SingleCompanyCardWidget(
                                      icon: company.companyLogo ?? "",
                                      isFeatured: true,
                                      positionCount: company.openJobsCount ?? 0,
                                      name: company.name ?? "",
                                      location: company.country ?? "",
                                      onCardTap: () =>
                                          FindCompanyController.openCompanyPage(
                                        company.username!,
                                      ),
                                      onOpenPositionTap: () =>
                                          FindCompanyController
                                              .openOpenPositionsClick(
                                        company.username!,
                                      ),
                                    ),
                                  );
                                },
                                childCount:
                                    controller.currentCompanyList!.length,
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
                          .map(
                            (index) => (
                              index == controller.currentPageIndex,
                              Text((index <= 9) ? "0$index" : "$index"),
                              (index == controller.currentPageIndex)
                                  ? () {}
                                  : () => controller
                                          .fetchCompanyListWithCurrentQuery(
                                        pageIndex: index,
                                      ),
                            ),
                          )
                          .toList(),
                      onForwardClick: controller.paginationData?.nextPageUrl ==
                              null
                          ? null
                          : () => controller.fetchCompanyListWithCurrentQuery(
                              pageIndex: controller.currentPageIndex + 1),
                      onBackwardClick: controller.paginationData?.prevPageUrl ==
                              null
                          ? null
                          : () => controller.fetchCompanyListWithCurrentQuery(
                                pageIndex: controller.currentPageIndex - 1,
                              ),
                    ),
                  ),
                ),
            ],
          );
        });
  }
}

class FindCompanySettings extends StatelessWidget {
  const FindCompanySettings({
    super.key,
    required this.controller,
  });

  final FindCompanyController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          18.height,
          Text(
            "Company List",
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
                : () => controller.fetchCompanyListWithCurrentQuery(
                      pageIndex: 1,
                    ),
            showFilterButton: false,
          ),
          12.height,
          //No popular tag for companies!
          /* Text(
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
                      FindCompanyOptionWidget(
                        type: "...",
                        isSelected: false,
                      ),
                      FindCompanyOptionWidget(
                        type: "...",
                        isSelected: false,
                      ),
                    ]
                  : controller.popularTags!
                      .map(
                        (type) => FindCompanyOptionWidget(
                          isSelected: false,
                          type: type.name!.upperCaseFirst,
                        ),
                      )
                      .toList(),
            ),
            8.height,
          ], */
        ],
      ),
    );
  }
}

class FindCompanyOptionWidget extends StatelessWidget {
  const FindCompanyOptionWidget({
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
