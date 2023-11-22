import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/job_alert/views/widgets/new_job.dart';
import 'package:jobpilot/src/global/widgets/circular_paginator.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

class JobAlertPageWidget extends StatelessWidget {
  const JobAlertPageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: const SvgIcon(
                            Assets.editIcon,
                          ),
                          label: const Text(
                            "Edit Job Alerts",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: horizontal16 + vertical8,
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const Padding(
                padding: vertical6,
                child: NewJobWidget(),
              ),
              childCount: 20,
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
  }
}
