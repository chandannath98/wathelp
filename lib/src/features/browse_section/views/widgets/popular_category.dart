import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/global/widgets/app_shimmer.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class HomePopularCategorySection extends StatelessWidget {
  const HomePopularCategorySection({
    super.key,
    this.dataList,
    required this.isLoading,
  });

  final bool isLoading;
  final List<
      ({
        String title,
        String count,
        bool isSvg,
        String? imageLink,
        VoidCallback onTap
      })>? dataList;

  @override
  Widget build(BuildContext context) {
    return (!isLoading && (dataList?.isEmpty ?? true))
        ? const SizedBox.shrink()
        : Padding(
            padding: all16 + vertical12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  LocaleKeys.popular_category.tr(),
                  style: context.text.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                10.height,
                if (isLoading)
                  for (int i in List.generate(8, (index) => index))
                    const AppShimmer(
                      child: PopularCategoryWidget(
                        title: "Loading...",
                        count: "...  ",
                      ),
                    )
                else
                  for (var i in dataList!)
                    PopularCategoryWidget(
                      title: i.title,
                      count: i.count,
                      isSvg: i.isSvg,
                      imageLink: i.imageLink,
                      onTap: i.onTap,
                    ),
                10.height,
                // Removed bcz categories are limited!
                /* InkWell(
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
                ), */
              ],
            ),
          );
  }
}

class PopularCategoryWidget extends StatelessWidget {
  const PopularCategoryWidget({
    super.key,
    this.onTap,
    this.imageLink,
    this.isSvg = false,
    required this.title,
    required this.count,
  });

  final bool isSvg;
  final String title;
  final String count;
  final String? imageLink;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      horizontalTitleGap: 18,
      onTap: onTap,
      title: Text(
        title,
        style: context.text.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text(
          "$count ${LocaleKeys.open_positions.tr()}",
          style: context.text.bodyMedium,
        ),
      ),
      leading: FittedBox(
        child: Container(
          padding: all12,
          alignment: Alignment.center,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.color?.theme,
          ),
          child: (imageLink != null)
              ? (isSvg
                  ? Container(
                      clipBehavior: Clip.hardEdge,
                      constraints: const BoxConstraints(
                        maxHeight: 100,
                      ),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.network(imageLink!),
                    )
                  : CircleAvatar(
                      maxRadius: 100,
                      foregroundImage: NetworkImage(imageLink!),
                    ))
              : Icon(
                  Icons.code,
                  color: context.color?.primary,
                ),
        ),
      ),
    );
  }
}
