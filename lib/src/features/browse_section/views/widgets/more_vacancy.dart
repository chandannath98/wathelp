import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/global/widgets/app_shimmer.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class HomeMoreVacanciesSection extends StatelessWidget {
  const HomeMoreVacanciesSection({
    super.key,
    this.isLoading = true,
    this.dataList = const [],
  });

  final bool isLoading;
  final List<({String title, int count, VoidCallback onTap})>? dataList;

  @override
  Widget build(BuildContext context) {
    return (!isLoading && (dataList?.isEmpty ?? true))
        ? 0.height
        : DecoratedBox(
            decoration: BoxDecoration(
              color: context.color?.theme,
            ),
            child: Padding(
              padding: all16 + vertical12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    LocaleKeys.most_popular_vacancies.tr(),
                    style: context.text.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  10.height,
                  if (isLoading)
                    for (int i in List.generate(8, (index) => index))
                      AppShimmer(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          visualDensity: VisualDensity.compact,
                          title: Text(
                            "Loading",
                            style: context.text.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            ".. Open Positions",
                            style: context.text.bodyMedium,
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward,
                          ),
                        ),
                      )
                  else
                    for (var a in (dataList ?? []))
                      ListTile(
                        onTap: a.onTap,
                        contentPadding: EdgeInsets.zero,
                        visualDensity: VisualDensity.compact,
                        title: Text(
                          a.title,
                          style: context.text.titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "${a.count} ${LocaleKeys.open_positions.tr()}",
                          style: context.text.bodyMedium,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                  // Removed bcz Vacancies are limited!
                  /* 10.height,
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
                  ), */
                ],
              ),
            ),
          );
  }
}
