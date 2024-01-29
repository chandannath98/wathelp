import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/applied_jobs/job/applied_job.dart';
import 'package:jobpilot/src/global/widgets/app/vertical_icon_text.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

import 'job_activity.dart';

class AppliedJobCardWidget extends StatelessWidget {
  const AppliedJobCardWidget({
    super.key,
    required this.jobData,
    required this.onViewDetailsTap,
  });

  final AppliedJob jobData;
  final ValueChanged<String> onViewDetailsTap;

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
                        jobData.companyLogo ?? "",
                        errorBuilder: (context, error, stackTrace) =>
                            const Image(
                          image: Assets.errorImage,
                        ),
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
                                  jobData.title ?? "",
                                  overflow: TextOverflow.ellipsis,
                                  style: context.text.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              if (jobData.isRemote == 1) ...[
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
                                      "${LocaleKeys.remote.tr()}",
                                      style: context.text.bodySmall?.copyWith(
                                        color: context.color?.primary,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                          3.height,
                          Expanded(
                            child: IntrinsicWidth(
                              child: Row(
                                children: [
                                  Flexible(
                                    child: VerticalIconText(
                                      icon: Icon(
                                        Icons.location_on_outlined,
                                        color: context.color?.extra,
                                      ),
                                      flexText: true,
                                      text: jobData.country ?? "",
                                    ),
                                  ),
                                  12.width,
                                  Flexible(
                                    child: VerticalIconText(
                                      flexText: true,
                                      text: jobData.salary ?? "",
                                      icon: Icon(
                                        Icons.attach_money_rounded,
                                        color: context.color?.extra,
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
                  ),
                ],
              ),
            ),
            12.height,
            Row(
              children: [
                JobActivityStatusWidget(
                  status: jobData.status!,
                ),
                12.width,
                Expanded(
                  child: Text(
                    "${LocaleKeys.already_applied.tr()}: ${jobData.appliedHumanTime}",
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
                    onPressed: () => onViewDetailsTap(jobData.slug!),
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                    label: Text(
                      LocaleKeys.view_details.tr(),
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
