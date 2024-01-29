import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_alert/alert_job/alert_job.dart';
import 'package:jobpilot/src/global/widgets/app/vertical_icon_text.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class SingleJobAlertWidget extends StatelessWidget {
  const SingleJobAlertWidget({
    super.key,
    required this.jobData,
    required this.onCardTap,
    required this.onApplyNow,
    required this.onBookmark,
  });

  final AlertJob jobData;
  final VoidCallback onCardTap;
  final VoidCallback onApplyNow;
  final VoidCallback onBookmark;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTap,
      child: Card(
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
                          jobData.companyLogo ?? "",
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Image(
                            image: Assets.errorImage,
                          ),
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
                                jobData.title ?? "",
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
                                  color:
                                      context.color?.primary.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Padding(
                                  padding: horizontal6 +
                                      const EdgeInsets.symmetric(vertical: 3),
                                  child: Text(
                                    jobData.jobType ?? "",
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
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  spacing: 12,
                  runSpacing: 4,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    VerticalIconText(
                      space: 3,
                      icon: Icon(
                        Icons.location_on_outlined,
                        color: context.color?.extra,
                      ),
                      text: jobData.country ?? "",
                    ),
                    VerticalIconText(
                      space: 3,
                      text: jobData.salary ?? "",
                      icon: Icon(
                        Icons.attach_money_rounded,
                        color: context.color?.extra,
                      ),
                    ),
                    VerticalIconText(
                      space: 3,
                      text: jobData.deadline ?? "",
                      icon: Icon(
                        Icons.calendar_month_outlined,
                        color: context.color?.extra,
                      ),
                    ),
                  ],
                ),
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
                        onPressed: onApplyNow,
                        icon: const Icon(
                          Icons.arrow_back,
                        ),
                        label: Text(
                          LocaleKeys.apply_now.tr(),
                          textAlign: TextAlign.center,
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
                      onPressed: onBookmark,
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
      ),
    );
  }
}
