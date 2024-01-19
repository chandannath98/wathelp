import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class HomeTutorialSection extends StatelessWidget {
  const HomeTutorialSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal16,
      child: Column(
        children: [
          32.height,
          Text(
            "Jobpilot ${LocaleKeys.working_process_setup.tr()}",
            style: context.text.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: context.color?.extraText,
            ),
          ),
          12.height,
          for (var i in [
            (
              Icons.person_add_alt,
              LocaleKeys.explore_opportunities.tr(),
              LocaleKeys
                  .browse_through_a_diverse_range_of_job_listings_tailored_to_your_interests_and_expertise
                  .tr()
            ),
            (
              Icons.cloud_upload_outlined,
              LocaleKeys.create_your_profile.tr(),
              LocaleKeys
                  .build_a_standout_profile_highlighting_your_skills_experience_and_qualifications
                  .tr(),
            ),
            (
              Icons.cases_outlined,
              LocaleKeys.apply_with_ease.tr(),
              LocaleKeys
                  .effortlessly_apply_to_jobs_that_match_your_preferences_with_just_a_few_clicks
                  .tr(),
            ),
            (
              Icons.verified_outlined,
              LocaleKeys.track_your_progress.tr(),
              LocaleKeys
                  .stay_informed_on_your_applications_and_manage_your_job_seeking_journey_effectively
                  .tr()
            ),
          ])
            SingleTutorialStepWidget(
              title: i.$2,
              subtitle: i.$3,
              icon: Icon(
                i.$1,
                color: context.color?.primary,
              ),
            ),
        ],
      ),
    );
  }
}

class SingleTutorialStepWidget extends StatelessWidget {
  const SingleTutorialStepWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final Widget icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: vertical12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.color?.theme,
            ),
            child: Center(
              child: Padding(
                padding: all12,
                child: icon,
              ),
            ),
          ),
          10.height,
          Text(
            title,
            style: context.text.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          10.height,
          Text(
            subtitle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
