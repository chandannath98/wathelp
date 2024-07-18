import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/browse_section/controllers/browse_controller.dart';
import 'package:jobpilot/src/features/browse_section/views/widgets/search_box.dart';
import 'package:jobpilot/src/features/browse_section/views/widgets/testimonial_list.dart';
import 'package:jobpilot/src/features/find_jobs/controllers/find_jobs_controller.dart';
import 'package:jobpilot/src/global/widgets/app/app_logo_app_bar.dart';
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
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppLogoAppBar(
        autoLeading: true,
      ),
      body: BrowsePage(),
    );
  }
}

class BrowsePage extends StatelessWidget {
  const BrowsePage({
    super.key,
    
   
  });
 
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: BrowseDataController(),
      builder: (controller) {
        return CustomScrollView(
          
          slivers: [
             SliverToBoxAdapter(child:
        10.height,),
            SliverToBoxAdapter(child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchBoxWidget(
                        showFilterButton: false,
                        searchController: controller.searchController,
                        locationController: controller.locationController,
                        onSearchClick: controller.onSearchClick,
                      ),
            ),            ),
        SliverToBoxAdapter(child:
        10.height,),
            SliverToBoxAdapter(child:  Image.asset("assets/images/home_banner.png",
          height: MediaQuery.of(context).size.width * 0.464,
          width: MediaQuery.of(context).size.width,),),
 
            SliverToBoxAdapter(
              child: BrowseScreenTopSection(
                controller: controller,
                liveJobsData: controller.data?.states?.liveJobs?.toString(),
                companiesData: controller.data?.states?.companies?.toString(),
                candidatesData:
                    controller.data?.states?.candidates?.toString(),
                newJobsData: controller.data?.states?.newJobs?.toString(),
              ),
            ),
          SliverToBoxAdapter(
              child: 32.height,
            ),
        //   SliverToBoxAdapter(child:  GridView.count(
        //   shrinkWrap: true,
        //   crossAxisCount: 2,
        //   mainAxisSpacing: 16,
        //   crossAxisSpacing: 16,
        //   childAspectRatio: 198 / 94,
        //   physics: const NeverScrollableScrollPhysics(),
        //   children: [
        //     HomeDataCard(
        //       icon: const Icon(Icons.next_week_outlined),
        //       data: controller.data?.states?.liveJobs?.toString() ?? "...",
        //       title: LocaleKeys.live_job.tr,
        //     ),
        //     HomeDataCard(
        //       icon: const Icon(Icons.location_city),
        //       data: controller.data?.states?.companies?.toString() ?? "...",
        //       title: LocaleKeys.companies.tr,
        //     ),
        //     HomeDataCard(
        //       icon: const Icon(Icons.people_alt_outlined),
        //       data: controller.data?.states?.candidates?.toString() ?? "...",
        //       title: LocaleKeys.candidates.tr,
        //     ),
        //     HomeDataCard(
        //       icon: const Icon(Icons.tour_outlined),
        //       data: controller.data?.states?.newJobs?.toString() ?? "...",
        //       title: LocaleKeys.new_jobs.tr,
        //     ),
        //   ],
        // ),
        //   ),  
            SliverToBoxAdapter(
              child: 32.height,
            ),
             SliverToBoxAdapter(
              child: HomePopularCategorySection(
                isLoading: false,
                dataList: controller.data?.popularCategories
                    ?.map((e) => (
                          isSvg: e.isSvg ?? false,
                          title: e.name!,
                          count: e.openJobsCount!.toString(),
                          imageLink: e.image!,
                          onTap: () => controller.onTopCategorySelect(e.id),
                        ))
                    .toList(),
              ),
            ),
            SliverToBoxAdapter(
              child: HomeMoreVacanciesSection(
                isLoading: controller.isLoading,
                dataList: controller.data?.mostPopularVacancies
                    ?.map((e) => (
                          title: e.name!,
                          count: e.openPositionCount!,
                          onTap: () => controller.onTopVacancySelect(e.id),
                        ))
                    .toList(),
              ),
            ),
            //  SliverToBoxAdapter(
            //   child: Padding(
            //     padding: vertical10 + const EdgeInsets.only(top: 12),
            //     child: RegisterNowSection(
            //       onActionClick: controller.onRegisterClick,
            //     ),
            //   ),
            // ),






            // const SliverToBoxAdapter(
            //   child: HomeTutorialSection(),
            // ),
           
            
            SliverToBoxAdapter(
              child: TopCompaniesSection(
                isLoading: controller.isLoading,
                data: controller.data?.topCompanies?.toList(),
              ),
            ),
           
           
            // SliverToBoxAdapter(
            //   child: BecomeEmployeeSection(
            //     onActionClick: controller.onRegisterClick,
            //   ),
            // ),
            SliverToBoxAdapter(
              child: 10.height,
            ),
             SliverToBoxAdapter(
              child: TestimonialListSection(
                isLoading: controller.isLoading,
                dataList: controller.data?.testimonial,
              ),
            ),
            
          ],
        );
      },
    );
  }
}
