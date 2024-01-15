import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/constants/strings/home_strings.dart';
import 'package:jobpilot/src/features/browse_section/controllers/browse_controller.dart';
import 'package:jobpilot/src/features/browse_section/views/widgets/search_box.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class BrowseScreenTopSection extends StatelessWidget {
  const BrowseScreenTopSection({
    super.key,
    this.liveJobsData,
    this.companiesData,
    this.candidatesData,
    this.newJobsData,
    required this.controller,
  });

  final String? liveJobsData;
  final String? companiesData;
  final String? candidatesData;
  final String? newJobsData;
  final BrowseDataController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        16.height,
        Padding(
          padding: vertical12,
          child: Text(
            LocaleKeys
                .discover_your_perfect_job_matching_your_interests_and_skills
                .tr(),
            style: context.text.headlineMedium?.copyWith(
              color: context.color?.extraText,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          LocaleKeys.unlock_your_potential_embrace_your_future.tr(),
          style: context.text.titleMedium?.copyWith(
            color: context.color?.extraText,
          ),
        ),
        16.height,
        SearchBoxWidget(
          showFilterButton: false,
          searchController: controller.searchController,
          locationController: controller.locationController,
          onSearchClick: controller.onSearchClick,
        ),
        8.height,
        if (controller.popularTags != null)
          RichText(
            text: TextSpan(
              text: "${LocaleKeys.suggestion.tr()}:   ",
              style: context.text.bodySmall?.copyWith(height: 1.5),
              children: controller.popularTags!
                  // .take(5)
                  .map(
                    (e) => TextSpan(
                      text: "${e.name},   ",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => controller.onSuggestionSelect(e.id),
                      style: TextStyle(
                        color: context.color?.opposite,
                      ),
                    ),
                  )
                  .toList()
                ..add(
                  const TextSpan(
                    text: "etc.",
                  ),
                ),
            ),
            textAlign: TextAlign.center,
          ),
        32.height,
        SvgPicture.asset(Assets.homeHeroSvg),
        32.height,
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 198 / 94,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            HomeDataCard(
              icon: const Icon(Icons.next_week_outlined),
              data: liveJobsData ?? "...",
              title: LocaleKeys.live_job.tr(),
            ),
            HomeDataCard(
              icon: const Icon(Icons.location_city),
              data: companiesData ?? "...",
              title: LocaleKeys.companies.tr(),
            ),
            HomeDataCard(
              icon: const Icon(Icons.people_alt_outlined),
              data: candidatesData ?? "...",
              title: LocaleKeys.candidates.tr(),
            ),
            HomeDataCard(
              icon: const Icon(Icons.tour_outlined),
              data: newJobsData ?? "...",
              title: LocaleKeys.new_jobs.tr(),
            ),
          ],
        ),
      ],
    );
  }
}

class HomeDataCard extends StatelessWidget {
  const HomeDataCard({
    super.key,
    required this.icon,
    required this.data,
    required this.title,
  });

  final Widget icon;
  final String data;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.color?.theme,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: all16,
        child: SizedBox(
          height: 60,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: FittedBox(
                  child: icon,
                ),
              ),
              16.width,
              Expanded(
                flex: 8,
                child: Padding(
                  padding: vertical6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data,
                        maxLines: 1,
                        style: context.text.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(title),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
