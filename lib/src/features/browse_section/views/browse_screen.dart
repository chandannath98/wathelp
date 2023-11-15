import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/browse_section/views/widgets/testimonial_list.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

import 'widgets/become_candidate.dart';
import 'widgets/become_employee.dart';
import 'widgets/featured_jobs.dart';
import 'widgets/header_section.dart';
import 'widgets/more_vacancy.dart';
import 'widgets/popular_category.dart';
import 'widgets/top_companies.dart';
import 'widgets/tutorial_section.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: horizontal16,
            child: NoUserHomeHeader(),
          ),
        ),
        SliverToBoxAdapter(
          child: 32.height,
        ),
        const SliverToBoxAdapter(
          child: HomeMoreVacanciesSection(),
        ),
        const SliverToBoxAdapter(
          child: HomeTutorialSection(),
        ),
        const SliverToBoxAdapter(
          child: HomePopularCategorySection(),
        ),
        const SliverToBoxAdapter(
          child: HomeFeaturedJobsSection(),
        ),
        const SliverToBoxAdapter(
          child: TopCompaniesSection(),
        ),
        const SliverToBoxAdapter(
          child: TestimonialListSection(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: vertical10 + const EdgeInsets.only(top: 12),
            child: const RegisterNowSection(),
          ),
        ),
        const SliverToBoxAdapter(
          child: BecomeEmployeeSection(),
        ),
        SliverToBoxAdapter(
          child: 10.height,
        ),
      ],
    );
  }
}
