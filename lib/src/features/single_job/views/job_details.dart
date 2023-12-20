import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/border_radius.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/constants/utilities/date_formats.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/related_jobs/related_job.dart';
import 'package:jobpilot/src/features/single_job/controllers/single_job_controller.dart';
import 'package:jobpilot/src/global/widgets/app/overview_data_tile.dart';
import 'package:jobpilot/src/global/widgets/app/single_job_card.dart';
import 'package:jobpilot/src/global/widgets/app/squared_icon_button.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/services/theme/extensions/colors_theme.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/extensions/string_extensions.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';

class JobDetailsScreen extends StatelessWidget {
  const JobDetailsScreen({super.key, required this.jobSlug});
  final String jobSlug;
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      tag: jobSlug,
      init: SingleJobController(slug: jobSlug),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            title: const Text(
              "Job Details",
            ),
          ),
          body: controller.isLoading
              ? const LoadingIndicator()
              : CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(child: 12.height),
                    SliverToBoxAdapter(
                      child: JobDetailCompanyHeader(
                        controller: controller,
                      ),
                    ),
                    SliverToBoxAdapter(child: 24.height),
                    SliverToBoxAdapter(
                      child: JobDescriptionWidget(
                        controller: controller,
                      ),
                    ),
                    SliverToBoxAdapter(child: 24.height),
                    SliverToBoxAdapter(
                      child: JobDetails(controller: controller),
                    ),
                    SliverToBoxAdapter(child: 24.height),
                    SliverToBoxAdapter(
                      child: JobBenefitsSection(controller: controller),
                    ),
                    SliverToBoxAdapter(child: 24.height),
                    SliverToBoxAdapter(
                      child: JobOverviewSection(controller: controller),
                    ),
                    SliverToBoxAdapter(child: 32.height),
                    SliverToBoxAdapter(
                      child: RelatedJobsSection(
                        relatedJobs: controller.relatedJobs ?? [],
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}

class RelatedJobsSection extends StatelessWidget {
  const RelatedJobsSection({
    super.key,
    required this.relatedJobs,
  });

  final List<RelatedJob> relatedJobs;

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
              "Related Jobs",
              style: context.text.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            18.height,
            for (RelatedJob i in relatedJobs) ...[
              8.height,
              SingleFeaturedJobCard(
                bookmarked: i.bookmarked,
                postName: i.title!,
                postType: i.jobType!,
                salaryRange: i.salary ?? "",
                companyName: i.companyName!,
                companyLocation: i.country!,
                companyIcon: i.companyLogo!,
                onItemClick: () => Get.to(
                  () => JobDetailsScreen(jobSlug: i.slug!),
                  preventDuplicates: false,
                ),
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

class JobOverviewSection extends StatelessWidget {
  const JobOverviewSection({
    super.key,
    required this.controller,
  });

  final SingleJobController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: horizontal16,
      shape: const RoundedRectangleBorder(
        borderRadius: br8,
      ),
      child: Padding(
        padding: all20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Job Overview",
              style: context.text.titleMedium?.copyWith(
                height: 0.9,
                fontSize: 18,
              ),
            ),
            20.height,
            Row(
              children: [
                Expanded(
                  child: OverviewDataTile(
                    title: "JOB POSTED: ",
                    data: (controller.jobDetails?.postDate == null)
                        ? "Unknown"
                        : dMMMy.format(controller.jobDetails!.postDate!),
                    icon: Icon(Icons.calendar_today_outlined),
                  ),
                ),
                Expanded(
                  child: OverviewDataTile(
                    title: "JOB EXPIRES IN: ",
                    data: dMMMy.format(
                      controller.jobDetails?.expireDate ?? DateTime.now(),
                    ),
                    icon: Icon(Icons.timer_outlined),
                  ),
                ),
              ],
            ),
            20.height,
            Row(
              children: [
                Expanded(
                  child: OverviewDataTile(
                    title: "EXPERIENCE",
                    data: controller.jobDetails?.experience ?? "",
                    icon: Icon(Icons.wallet_outlined),
                  ),
                ),
                Expanded(
                  child: OverviewDataTile(
                    title: "EDUCATION",
                    data: controller.jobDetails?.education ??
                        (controller.jobDetails?.education ?? ""),
                    icon: Icon(Icons.work_outline_rounded),
                  ),
                ),
              ],
            ),
            14.height,
            const Divider(),
            14.height,
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Share this job:",
                  style: context.text.titleMedium?.copyWith(
                    height: 0.9,
                    fontSize: 18,
                  ),
                ),
                12.height,
                Row(
                  children: [
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        padding: horizontal12 + vertical8,
                        backgroundColor:
                            context.color?.primary.withOpacity(0.1),
                      ),
                      onPressed: () {},
                      icon: Transform.rotate(
                        angle: 15,
                        child: Icon(
                          Icons.insert_link_rounded,
                        ),
                      ),
                      label: Text(
                        "Copy Links",
                      ),
                    ),
                    SquaredIconButton(
                      icon: SvgIcon(
                        Assets.twitterIcon,
                      ),
                      onTap: () {},
                    ),
                    SquaredIconButton(
                      icon: SvgIcon(
                        Assets.facebookIcon,
                      ),
                      onTap: () {},
                    ),
                    SquaredIconButton(
                      icon: SvgIcon(
                        Assets.instagramIcon,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
            16.height,
            Text("Job tags:"),
            8.height,
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: controller.jobDetails?.tags
                      ?.map(
                        (tag) => DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: br4,
                            color: context.color?.background,
                          ),
                          child: Padding(
                            padding: vertical3 + horizontal8,
                            child: Text(tag),
                          ),
                        ),
                      )
                      .toList() ??
                  [],
            ),
          ],
        ),
      ),
    );
  }
}

class JobBenefitsSection extends StatelessWidget {
  const JobBenefitsSection({
    super.key,
    required this.controller,
  });

  final SingleJobController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: horizontal16,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: all18,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Job Benefits",
              style: context.text.titleMedium,
            ),
            16.height,
            Wrap(
              runSpacing: 8,
              spacing: 8,
              children: controller.jobDetails?.benefits
                      ?.map(
                        (e) => Container(
                          padding: horizontal8 + vertical3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: context.color?.background ?? Colors.grey,
                          ),
                          child: Text(
                            e,
                          ),
                        ),
                      )
                      .toList() ??
                  [],
            ),
          ],
        ),
      ),
    );
  }
}

class JobDetails extends StatelessWidget {
  const JobDetails({
    super.key,
    required this.controller,
  });

  final SingleJobController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal16,
      child: Card(
        elevation: 0,
        margin: vertical8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Padding(
              padding: all20,
              child: Column(
                children: [
                  Text(
                    "Salary (USD)",
                    style: context.text.titleMedium,
                  ),
                  12.height,
                  Text(
                    "${controller.jobDetails?.salary}",
                    style: context.text.titleLarge?.copyWith(
                      color: context.color?.primary,
                    ),
                  ),
                  Text(
                    "Yearly salary",
                    style: context.text.bodyMedium?.copyWith(
                      color: context.color?.extra,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Icon(
                    Icons.map_outlined,
                    size: 32,
                  ),
                  Text(
                    "Job Location",
                    style: context.text.titleMedium,
                  ),
                  8.height,
                  Text(
                    (controller.jobDetails?.location ?? ""),
                    style: context.text.bodyMedium?.copyWith(
                      color: context.color?.extra,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JobDescriptionWidget extends StatelessWidget {
  const JobDescriptionWidget({
    super.key,
    required this.controller,
  });

  final SingleJobController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Job Description",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.text.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          12.height,
          LimitedBox(
            maxHeight: 350,
            child: InkWell(
              onTap: controller.showFullDescription,
              child: Stack(
                children: [
                  Text(
                    controller.jobDetails?.description?.withoutHtml ?? "",
                    maxLines: 28,
                    overflow: TextOverflow.ellipsis,
                    style: context.text.bodyMedium?.copyWith(
                      color: context.color?.extraText,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors: [
                            Color(0x00F1F2F4),
                            Color(0xFFF1F2F4),
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          60.height,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Read Full Description",
                                style: context.text.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: context.color?.primary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class JobDetailCompanyHeader extends StatelessWidget {
  const JobDetailCompanyHeader({
    super.key,
    required this.controller,
  });

  final SingleJobController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                ColoredBox(
                  color: Colors.white,
                  child: SizedBox.square(
                    dimension: 56,
                    child: Image.network(
                      controller.company?.logo ?? "",
                    ),
                  ),
                ),
                8.width,
                Expanded(
                  child: Padding(
                    padding: vertical3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          controller.jobDetails?.title ?? "",
                          style: context.text.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        8.height,
                        Row(
                          children: [
                            const Text(
                              "at",
                            ),
                            4.width,
                            Flexible(
                              child: Text(
                                controller.company?.name ?? "",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: context.text.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            4.width,
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: context.color?.mainAccent,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Padding(
                                padding: vertical3 + horizontal6,
                                child: Text(
                                  controller.jobDetails?.jobType
                                          ?.toUpperCase() ??
                                      "",
                                  style: context.text.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: context.color?.theme,
                                  ),
                                ),
                              ),
                            ),
                            ...[
                              4.width,
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: vertical6 + horizontal12,
                                  child: Text(
                                    "Featured",
                                    style: context.text.titleSmall?.copyWith(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ],
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
              Expanded(
                child: (controller.jobDetails?.applied ?? false)
                    ? ElevatedButton.icon(
                        onPressed: null,
                        icon: const Icon(Icons.check_rounded),
                        label: const Text(
                          "Applied",
                        ),
                      )
                    : Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                          onPressed: controller.onApplyClick,
                          icon: const Icon(Icons.arrow_back),
                          label: const Text(
                            "Apply Now",
                          ),
                        ),
                      ),
              ),
              8.width,
              InkWell(
                onTap: controller.onBookmarkJobClick.withOverlay,
                borderRadius: BorderRadius.circular(4),
                child: Card(
                  child: Padding(
                    padding: all8,
                    child: Icon(
                      (controller.jobDetails?.bookmarked ?? false)
                          ? Icons.bookmark
                          : Icons.bookmark_outline,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
