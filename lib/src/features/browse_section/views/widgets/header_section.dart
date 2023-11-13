import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/constants/strings/home_strings.dart';
import 'package:jobpilot/src/features/browse_section/views/widgets/search_box.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class NoUserHomeHeader extends StatelessWidget {
  const NoUserHomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        16.height,
        Padding(
          padding: vertical12 /* .add(const EdgeInsets.only(right: 18)) */,
          child: Text(
            heading,
            style: context.text.headlineMedium?.copyWith(
              color: context.color?.extraText,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          subtitle,
          style: context.text.titleMedium?.copyWith(
            color: context.color?.extraText,
          ),
        ),
        16.height,
        SearchBoxWidget(
          showFilterButton: false,
          onSearchClick: () {},
        ),
        8.height,
        RichText(
          text: TextSpan(
            text: "Suggestion: ",
            style: context.text.bodySmall,
            children: [
              "Designer",
              "Programming",
              "Digital Marketing",
              "Video",
              "Animation"
            ]
                .map(
                  (e) => TextSpan(
                    text: "$e, ",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        if (Get.isSnackbarOpen) {
                          Get.closeAllSnackbars();
                        }
                        Get.showSnackbar(
                          GetSnackBar(
                            message: e,
                            duration: const Duration(seconds: 3),
                          ),
                        );
                      },
                    style: TextStyle(
                      color: (e == "Digital Marketing")
                          ? context.color?.primary
                          : context.color?.opposite,
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
          children: const [
            HomeDataCard(
              icon: Icon(Icons.next_week_outlined),
              data: "1,75,324",
              title: "Live Job",
            ),
            HomeDataCard(
              icon: Icon(Icons.location_city),
              data: "75,324",
              title: "Companies",
            ),
            HomeDataCard(
              icon: Icon(Icons.people_alt_outlined),
              data: "31,75,324",
              title: "Candidates",
            ),
            HomeDataCard(
              icon: Icon(Icons.tour_outlined),
              data: "5,324",
              title: "New Jobs",
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
