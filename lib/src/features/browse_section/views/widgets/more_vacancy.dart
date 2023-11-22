import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class HomeMoreVacanciesSection extends StatelessWidget {
  const HomeMoreVacanciesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.color?.theme,
      ),
      child: Padding(
        padding: all16 + vertical12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Most Popular Vacancies",
              style: context.text.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            10.height,
            for (String i in List.generate(8, (index) => "$index"))
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
                title: Text(
                  "Anesthesiologists",
                  style: context.text.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "45,${i}45 Open Positions",
                  style: context.text.bodyMedium,
                ),
                trailing: const Icon(
                  Icons.arrow_forward,
                ),
              ),
            10.height,
            InkWell(
              onTap: () {
                print("Click");
              },
              child: Text(
                "Load More Vacancies",
                style: context.text.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.color?.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
