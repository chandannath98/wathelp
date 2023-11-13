import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class HomeFeaturedJobsSection extends StatelessWidget {
  const HomeFeaturedJobsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.color?.theme ?? Colors.white,
      child: Padding(
        padding: all16 + vertical12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Featured Jobs",
              style: context.text.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            18.height,
            for (var i in List.generate(6, (index) => index)) ...[
              8.height,
              SingleFeaturedJobCard(
                bookmarked: true,
                postName: "Project Manager",
                postType: "FULL-TIME",
                salaryRange: "Salary: \$2$i,000 - \$3$i,000",
                companyName: "Google Inc.",
                companyLocation: "Dhaka, Bangladesh",
                companyIcon:
                    "https://img.icons8.com/?size=48&id=17949&format=png",
                onBookmarkCallback: () {},
              ),
              8.height,
            ],
            18.height,
            InkWell(
              onTap: () {
                print("Click");
              },
              child: Text(
                "Load More Feature Jobs",
                style: context.text.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.color?.primary,
                ),
              ),
            ),
            18.height,
          ],
        ),
      ),
    );
  }
}

class SingleFeaturedJobCard extends StatelessWidget {
  const SingleFeaturedJobCard({
    super.key,
    required this.bookmarked,
    required this.postName,
    required this.postType,
    required this.salaryRange,
    required this.companyName,
    required this.companyIcon,
    required this.companyLocation,
    required this.onBookmarkCallback,
  });
  final bool bookmarked;
  final String postName;
  final String postType;
  final String salaryRange;
  final String companyName;
  final String companyIcon;
  final String companyLocation;
  final VoidCallback onBookmarkCallback;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.color?.theme,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: context.color?.secondaryAccent ?? Colors.grey,
        ),
      ),
      child: AspectRatio(
        aspectRatio: 380 / 162,
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: all16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  postName,
                  style: context.text.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                8.height,
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: context.color?.mainAccent.withOpacity(0.1),
                        ),
                        child: Padding(
                          padding: vertical6 + horizontal8,
                          child: Text(
                            postType,
                            style: context.text.bodySmall?.copyWith(
                              color: context.color?.mainAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      8.width,
                      Text(
                        salaryRange,
                        style: context.text.titleMedium?.copyWith(
                          color: context.color?.extra,
                        ),
                      ),
                    ],
                  ),
                ),
                16.height,
                Expanded(
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          clipBehavior: Clip.hardEdge,
                          child: ColoredBox(
                            color:
                                context.color?.secondaryAccent ?? Colors.grey,
                            child: SizedBox.square(
                              dimension: constraints.maxHeight,
                              child: Padding(
                                padding: all8,
                                child: Image.network(
                                  companyIcon,
                                ),
                              ),
                            ),
                          ),
                        ),
                        16.width,
                        Expanded(
                          child: Padding(
                            padding: vertical8,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        companyName,
                                        style:
                                            context.text.titleSmall?.copyWith(
                                          color: context.color?.extraText,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: context.color?.extra,
                                          ),
                                          Text(
                                            companyLocation,
                                            style: context.text.titleMedium,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: onBookmarkCallback,
                          icon: Icon(
                            Icons.bookmark_border,
                            color: context.color?.extra,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
