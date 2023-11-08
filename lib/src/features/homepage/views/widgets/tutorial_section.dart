import 'package:flutter/material.dart';
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
            "How jobpilot work",
            style: context.text.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: context.color?.extraText,
            ),
          ),
          12.height,
          for (var i in [
            (
              Icons.person_add_alt,
              "Create account",
              "Aliquam facilisis egestas sapien, nec tempor leo tristique at."
            ),
            (
              Icons.cloud_upload_outlined,
              "Upload CV/Resume",
              "Curabitur sit amet maximus ligula. Nam a nulla ante. Nam sodales"
            ),
            (
              Icons.cases_outlined,
              "Find suitable job",
              "Phasellus quis eleifend ex. Morbi nec fringilla nibh."
            ),
            (
              Icons.verified_outlined,
              "Apply job",
              "Curabitur sit amet maximus ligula. Nam a nulla ante, Nam sodales purus."
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
