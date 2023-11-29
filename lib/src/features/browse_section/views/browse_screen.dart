import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/browse_section/controllers/browse_controller.dart';
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
    return GetBuilder(
        init: BrowseDataController(),
        builder: (controller) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: horizontal16,
                  child: NoUserHomeHeader(
                    liveJobsData: controller.data?.states?.liveJobs?.toString(),
                    companiesData:
                        controller.data?.states?.companies?.toString(),
                    candidatesData:
                        controller.data?.states?.candidates?.toString(),
                    newJobsData: controller.data?.states?.newJobs?.toString(),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: 32.height,
              ),
              SliverToBoxAdapter(
                child: HomeMoreVacanciesSection(
                  isLoading: controller.isLoading,
                  dataList: controller.data?.mostPopularVacancies
                      ?.map((e) => (
                            title: e.name!,
                            count: e.openPositionCount!,
                            onTap: () {},
                          ))
                      .toList(),
                ),
              ),
              const SliverToBoxAdapter(
                child: HomeTutorialSection(),
              ),
              SliverToBoxAdapter(
                child: HomePopularCategorySection(
                  isLoading: false,
                  dataList: controller.data?.popularCategories
                      ?.map((e) => (
                            title: e.name!,
                            count: e.openJobsCount!.toString(),
                            imageLink: e.image!,
                            onTap: () {}
                          ))
                      .toList(),
                ),
              ),
              SliverToBoxAdapter(
                child: HomeFeaturedJobsSection(
                  isLoading: controller.isLoading,
                  dataList: controller.data?.featuredJobs
                      ?.map((e) => (
                            job: e,
                            onTap: () {},
                            onBookmark: () {},
                          ))
                      .toList(),
                ),
              ),
              SliverToBoxAdapter(
                child: TopCompaniesSection(
                  isLoading: controller.isLoading,
                  data: controller.data?.topCompanies
                      ?.map(
                        (e) => (company: e, onTap: () {}),
                      )
                      .toList(),
                ),
              ),
              SliverToBoxAdapter(
                child: TestimonialListSection(
                  isLoading: controller.isLoading,
                  dataList: controller.data?.testimonial,
                ),
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
        });
  }
}
