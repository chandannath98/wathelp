import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/global/widgets/app/vertical_icon_text.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class SingleJobAlertWidget extends StatelessWidget {
  const SingleJobAlertWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: vertical6,
      child: Padding(
        padding: all12,
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  SizedBox.square(
                    dimension: 48,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.network(
                        "https://img.icons8.com/?size=80&id=qLVB1tIe9Ts9&format=png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  12.width,
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Technical Support Specialist",
                              style: context.text.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          4.height,
                          Align(
                            alignment: Alignment.centerLeft,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: context.color?.primary.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Padding(
                                padding: horizontal6 +
                                    const EdgeInsets.symmetric(vertical: 3),
                                child: Text(
                                  "Remote",
                                  style: context.text.bodySmall?.copyWith(
                                    color: context.color?.primary,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            12.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                VerticalIconText(
                  space: 3,
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: context.color?.extra,
                  ),
                  text: "Washington",
                ),
                VerticalIconText(
                  space: 3,
                  text: "\$15k-20k",
                  icon: Icon(
                    Icons.attach_money_rounded,
                    color: context.color?.extra,
                  ),
                ),
                VerticalIconText(
                  space: 3,
                  text: "17 Jan, 2022",
                  icon: Icon(
                    Icons.calendar_month_outlined,
                    color: context.color?.extra,
                  ),
                ),
              ],
            ),
            12.height,
            Row(
              children: [
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: SizedBox(
                    width: 150,
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                      label: const Text(
                        "Apply Now",
                      ),
                    ),
                  ),
                ),
                12.width,
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: context.color?.primary.withOpacity(0.1),
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_border_outlined,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
