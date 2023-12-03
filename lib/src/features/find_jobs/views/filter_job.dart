import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/category/job_category.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_type/job_type.dart';
import 'package:jobpilot/src/features/find_jobs/controllers/filter_controller.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/services/theme/extensions/colors_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

import 'widgets/custom_radio_list_tile.dart';

class AdvanceJobFilter extends StatelessWidget {
  const AdvanceJobFilter({super.key, this.currentQuery});

  final SearchQuery? currentQuery;

  @override
  Widget build(BuildContext context) {
    final lightGrey = context.color?.extraText.withOpacity(0.3);
    final divider = Divider(color: lightGrey);
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text(
          "Advance Filter",
        ),
      ),
      body: GetBuilder(
        init: JobFilterController(searchQuery: currentQuery),
        builder: (controller) => Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    24.height,
                    ActiveFiltersSection(
                      controller: controller,
                    ),
                    divider,
                    JobTypesSection(
                      isLoading: controller.isLoading,
                      typeList: controller.availableJobTypes,
                      selectedTypeId: controller.currentQuery.jobType,
                      onValueChanged: controller.setCurrentJobType,
                    ),
                    divider,
                    SalaryLimitSection(
                      min: 10,
                      max: 150000,
                      currentMin: controller.currentQuery.minPrice ?? 7000,
                      currentMax: controller.currentQuery.maxPrice ?? 120000,
                      selectedRangeOption: controller.selectedRangeOptionId,
                      salaryRangeList: controller.selectableSalaryRange,
                      customOptionId: controller.selectableSalaryRange.last.id,
                      setMinimumRange: controller.setMinimumSalary,
                      setMaximumRange: controller.setMaximumSalary,
                      setSelectableOption:
                          controller.setSelectedSalaryRangeOption,
                    ),
                    divider,
                    AvailableCategorySection(
                      currentCategoryId: controller.currentQuery.category,
                      availableCategories: controller.availableJobCategories,
                      onCategorySelect: controller.setCurrentJobCategory,
                    ),
                    divider,
                  ],
                ),
              ),
            ),
            ColoredBox(
              color: context.color?.theme ?? Colors.white,
              child: SafeArea(
                child: Column(
                  children: [
                    Divider(
                      height: 1,
                      color: lightGrey,
                    ),
                    Padding(
                      padding: all12,
                      child: Row(
                        children: [
                          Expanded(
                            child: Builder(builder: (context) {
                              final isSelected =
                                  controller.currentQuery.isRemote == 1;
                              return InkWell(
                                onTap: () {
                                  controller.setRemoteJobStatus(!isSelected);
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        height: 18,
                                        width: 36,
                                        child: FittedBox(
                                          child: CupertinoSwitch(
                                            activeColor: context.color?.primary,
                                            value: isSelected,
                                            onChanged:
                                                controller.setRemoteJobStatus,
                                          ),
                                        ),
                                      ),
                                    ),
                                    4.width,
                                    const Text(
                                      "Remote Job",
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                          SizedBox(
                            width: 120,
                            child: ElevatedButton(
                              onPressed: () =>
                                  Get.back(result: controller.currentQuery),
                              child: const Text(
                                "Apply Filter",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AvailableCategorySection extends StatelessWidget {
  const AvailableCategorySection({
    super.key,
    this.currentCategoryId,
    required this.availableCategories,
    required this.onCategorySelect,
  });
  final int? currentCategoryId;
  final List<JobCategory> availableCategories;
  final ValueChanged<int?> onCategorySelect;

  @override
  Widget build(BuildContext context) {
    const allCategoryOption = JobCategory(
      id: null,
      name: "All Category",
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        12.height,
        Padding(
          padding: horizontal16,
          child: Text(
            "Industry",
            style: context.text.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: context.color?.primary,
            ),
          ),
        ),
        12.height,
        CategoryListTile(
          currentCategoryId: currentCategoryId,
          category: allCategoryOption,
          onCategorySelect: onCategorySelect,
        ),
        for (JobCategory i in availableCategories)
          CategoryListTile(
            category: i,
            onCategorySelect: onCategorySelect,
            currentCategoryId: currentCategoryId,
          ),
        12.height,
      ],
    );
  }
}

class CategoryListTile extends StatelessWidget {
  const CategoryListTile({
    super.key,
    required this.currentCategoryId,
    required this.category,
    required this.onCategorySelect,
  });

  final int? currentCategoryId;
  final JobCategory category;
  final ValueChanged<int?> onCategorySelect;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal6,
      child: ListTile(
        dense: true,
        minVerticalPadding: 0,
        contentPadding: horizontal6,
        selected: currentCategoryId == category.id,
        visualDensity: VisualDensity.compact,
        selectedColor: context.color?.primary,
        selectedTileColor: context.color?.primary.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        onTap: () => onCategorySelect(category.id),
        title: Text(
          category.name ?? "",
        ),
      ),
    );
  }
}

class SalaryLimitSection extends StatelessWidget {
  const SalaryLimitSection({
    super.key,
    required this.min,
    required this.max,
    this.customOptionId,
    this.selectedRangeOption,
    required this.currentMin,
    required this.currentMax,
    required this.salaryRangeList,
    required this.setMinimumRange,
    required this.setMaximumRange,
    required this.setSelectableOption,
  });

  final int min;
  final int max;
  final int currentMin;
  final int currentMax;
  final int? customOptionId;
  final int? selectedRangeOption;
  final ValueChanged<int?> setMinimumRange;
  final ValueChanged<int?> setMaximumRange;
  final List<SalaryRangeSelectable> salaryRangeList;
  final ValueChanged<int?> setSelectableOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        12.height,
        Padding(
          padding: horizontal16,
          child: Text(
            "Salary (yearly)",
            style: context.text.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: context.color?.primary,
            ),
          ),
        ),
        if (customOptionId == selectedRangeOption) ...[
          8.height,
          RangeSlider(
            labels: const RangeLabels("min", "max"),
            min: min.toDouble(),
            max: max.toDouble(),
            values: RangeValues(currentMin.toDouble(), currentMax.toDouble()),
            onChanged: (value) {
              setMinimumRange(value.start.toInt());
              setMaximumRange(value.end.toInt());
            },
          ),
          4.height,
          Padding(
            padding: horizontal18,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Min: \$${currentMin}",
                    style: context.text.bodyMedium?.copyWith(
                      color: context.color?.extraText,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Min: \$${currentMax}",
                      style: context.text.bodyMedium?.copyWith(
                        color: context.color?.extraText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          4.height,
        ],
        8.height,
        for (var i in salaryRangeList)
          CustomRadioListTile(
            title: i.title ?? "\$${i.min}-\$${i.max}",
            value: i.id,
            groupValue: selectedRangeOption,
            onTap: (value) {
              setMinimumRange(i.min);
              setMaximumRange(i.max);
              setSelectableOption(value);
            },
          ),
        12.height,
      ],
    );
  }
}

class JobTypesSection extends StatelessWidget {
  const JobTypesSection({
    super.key,
    this.selectedTypeId,
    required this.isLoading,
    required this.typeList,
    required this.onValueChanged,
  });

  final bool isLoading;
  final int? selectedTypeId;
  final List<JobType> typeList;
  final ValueChanged<int?> onValueChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        12.height,
        Padding(
          padding: horizontal16,
          child: Text(
            "Job Type",
            style: context.text.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: context.color?.primary,
            ),
          ),
        ),
        8.height,
        for (var i in typeList)
          CustomRadioListTile(
            title: i.name ?? "",
            value: i.id!,
            groupValue: selectedTypeId,
            onTap: onValueChanged,
          ),
        12.height,
      ],
    );
  }
}

class ActiveFiltersSection extends StatelessWidget {
  const ActiveFiltersSection({
    super.key,
    required this.controller,
  });

  final JobFilterController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Active Filters:",
          ),
          12.height,
          Wrap(
            runSpacing: 8,
            spacing: 8,
            children: [
              if (controller.currentQuery.query != null)
                ActiveFilterChip(
                  isSelected: false,
                  title: "Search: ${controller.currentQuery.query}",
                  onDelete: () => controller.setCurrentQuery(
                      controller.currentQuery.copyWith(query: null)),
                ),
              if (controller.currentQuery.location != null)
                ActiveFilterChip(
                  isSelected: true,
                  title: controller.currentQuery.location!,
                  onDelete: () => controller.setCurrentQuery(
                      controller.currentQuery.copyWith(location: null)),
                ),
              if (controller.currentQuery.jobType != null)
                ActiveFilterChip(
                  isSelected: false,
                  title: controller.availableJobTypes
                          .where(
                            (element) =>
                                element.id == controller.currentQuery.jobType,
                          )
                          .firstOrNull
                          ?.name ??
                      "",
                  onDelete: () => controller.setCurrentJobType(null),
                ),
              if (controller.currentQuery.minPrice != null ||
                  controller.currentQuery.maxPrice != null)
                ActiveFilterChip(
                  isSelected: false,
                  title:
                      "Salary \$${controller.currentQuery.minPrice?.toString() ?? "0"} = ${controller.currentQuery.maxPrice == null ? "Up" : "\$${controller.currentQuery.maxPrice}"}",
                  onDelete: () {
                    controller.setMaximumSalary(null);
                    controller.setMinimumSalary(null);
                  },
                ),
              if (controller.currentQuery.category != null)
                ActiveFilterChip(
                  isSelected: false,
                  title: controller.availableJobCategories
                          .where((element) =>
                              element.id == controller.currentQuery.category)
                          .firstOrNull
                          ?.name ??
                      "",
                  onDelete: () => controller.setCurrentJobCategory(null),
                ),
            ],
          ),
          24.height,
        ],
      ),
    );
  }
}

class ActiveFilterChip extends StatelessWidget {
  const ActiveFilterChip({
    super.key,
    required this.isSelected,
    required this.title,
    required this.onDelete,
  });
  final bool isSelected;
  final String title;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Chip(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor:
          (isSelected ? context.color?.primary : context.color?.extraText)
              ?.withOpacity(0.1),
      labelPadding: horizontal6.copyWith(right: 0),
      onDeleted: onDelete,
      deleteIcon: const Icon(
        Icons.close,
        size: 16,
      ),
      label: Text(title),
      // selected: true,
    );
  }
}
