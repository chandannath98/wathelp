import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/server/repositories/home/models/browse/feature_job/featured_jobs.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/jobs_repo.dart';
import 'package:jobpilot/src/features/find_jobs/views/find_jobs.dart';
import 'package:jobpilot/src/global/widgets/app/single_job_card.dart';
import 'package:jobpilot/src/global/widgets/app_shimmer.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class HomeFeaturedJobsSection extends StatelessWidget {
  const HomeFeaturedJobsSection({
    super.key,
    required this.isLoading,
    this.dataList,
  });

  final bool isLoading;
  final List<
          ({FeaturedJobs job, VoidCallback onTap, VoidCallback? onBookmark})>?
      dataList;

  @override
  Widget build(BuildContext context) {
    return (dataList == null || dataList!.isEmpty)
        ? const SizedBox.shrink()
        : ColoredBox(
            color: context.color?.theme ?? Colors.white,
            child: Padding(
              padding: all16 + vertical12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    LocaleKeys.featured_jobs.tr(),
                    style: context.text.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  18.height,
                  if (isLoading)
                    for (var i in List.generate(6, (index) => index)) ...[
                      8.height,
                      const AppShimmer(
                        child: SingleJobCard(
                          bookmarked: false,
                          postName: "Position Name",
                          postType: "FULL-TIME",
                          salaryRange: "Salary: \$???,?? - \$??,???",
                          companyName: "Company Name",
                          companyLocation: "Company Location",
                          companyIcon:
                              "https://img.icons8.com/?size=48&id=17949&format=png",
                        ),
                      ),
                      8.height,
                    ]
                  else
                    for (var i in dataList!) ...[
                      8.height,
                      SingleJobCard(
                        bookmarked: i.job.bookmarked,
                        postName: i.job.title!,
                        postType: i.job.jobType!,
                        salaryRange:
                            "Salary: \$${i.job.minSalary} - \$${i.job.maxSalary}",
                        onItemClick: i.onTap,
                        companyName: i.job.companyName!,
                        companyLocation: i.job.country!,
                        companyIcon: i.job.companyLogo!,
                        onBookmarkCallback: i.onBookmark,
                      ),
                      8.height,
                    ],
                  18.height,
                  InkWell(
                    onTap: () => Get.to(
                      () => const FindJobScreen(
                        query: SearchQuery(),
                      ),
                    ),
                    child: Padding(
                      padding: vertical3 + horizontal10,
                      child: Text(
                        LocaleKeys.load_more.tr(),
                        style: context.text.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.color?.primary,
                        ),
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
