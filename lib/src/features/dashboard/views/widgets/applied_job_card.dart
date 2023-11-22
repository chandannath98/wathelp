import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/global/widgets/app/vertical_icon_text.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

import 'job_activity.dart';

class AppliedJobCardWidget extends StatelessWidget {
  const AppliedJobCardWidget({
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
                        "https://cdn.iconscout.com/icon/premium/png-512-thumb/upwork-2752038-2284855.png?f=webp&w=256",
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
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Networking Engineer",
                                  style: context.text.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              12.width,
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color:
                                      context.color?.primary.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Padding(
                                  padding: all6,
                                  child: Text(
                                    "Remote",
                                    style: context.text.bodySmall?.copyWith(
                                      color: context.color?.primary,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                VerticalIconText(
                                  icon: Icon(
                                    Icons.location_on_outlined,
                                    color: context.color?.extra,
                                  ),
                                  text: "Washington",
                                ),
                                12.width,
                                VerticalIconText(
                                  text: "\$15k-20k/month",
                                  icon: Icon(
                                    Icons.attach_money_rounded,
                                    color: context.color?.extra,
                                  ),
                                ),
                              ],
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
              children: [
                JobActivityStatusWidget(),
                12.width,
                Expanded(
                  child: Text(
                    "Applied Date: Feb 2, 2019 19:28",
                    style: context.text.bodySmall,
                  ),
                ),
              ],
            ),
            12.height,
            Align(
              alignment: Alignment.centerLeft,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: SizedBox(
                  width: 160,
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(),
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                    label: Text(
                      "View Details",
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
