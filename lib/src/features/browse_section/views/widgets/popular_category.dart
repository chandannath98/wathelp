import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class HomePopularCategorySection extends StatelessWidget {
  const HomePopularCategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: all16 + vertical12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Popular Category",
            style: context.text.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          10.height,
          for (String i in List.generate(8, (index) => "$index"))
            ListTile(
              contentPadding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              horizontalTitleGap: 18,
              title: Text(
                "Anesthesiologists",
                style: context.text.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  "45,${i}45 Open Positions",
                  style: context.text.bodyMedium,
                ),
              ),
              leading: FittedBox(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.color?.theme,
                  ),
                  child: Center(
                    child: Padding(
                      padding: all12,
                      child: Icon(
                        Icons.code,
                        color: context.color?.primary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          10.height,
          InkWell(
            onTap: () {
              print("Click");
            },
            child: Text(
              "Load More Category",
              style: context.text.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.color?.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
