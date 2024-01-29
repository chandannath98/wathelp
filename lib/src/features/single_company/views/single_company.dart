import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/border_radius.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/constants/utilities/date_formats.dart';
import 'package:jobpilot/src/domain/server/repositories/company/models/single_company/open_positions/paginated_open_positions_data.dart';
import 'package:jobpilot/src/features/find_jobs/controllers/find_jobs_controller.dart';
import 'package:jobpilot/src/features/single_company/controllers/single_company_controller.dart';
import 'package:jobpilot/src/global/widgets/app/overview_data_tile.dart';
import 'package:jobpilot/src/global/widgets/app/single_job_card.dart';
import 'package:jobpilot/src/global/widgets/app/squared_icon_button.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';
import 'package:readmore/readmore.dart';

class SingleCompanyDetailsScreen extends StatelessWidget {
  const SingleCompanyDetailsScreen({
    super.key,
    required this.companyUserName,
  });

  final String companyUserName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          LocaleKeys.company_description.tr(),
        ),
      ),
      body: GetBuilder(
        init: SingleCompanyController(userName: companyUserName),
        builder: (controller) {
          return controller.isLoading
              ? const Center(
                  child: LoadingIndicator(),
                )
              : CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          24.height,
                          CompanyDetailsHeader(
                            controller: controller,
                          ),
                          24.height,
                          CompanyDescriptionWidget(
                            controller: controller,
                          ),
                          24.height,
                          CompanyOverviewSection(
                            controller: controller,
                          ),
                          24.height,
                          CompanyContactSection(
                            controller: controller,
                          ),
                          24.height,
                          // 24.height,
                        ],
                      ),
                    ),
                    if (controller.openJobs != null)
                      SliverToBoxAdapter(
                        child: GetBuilder(
                            tag: "#SINGLE_COMPANY_OPEN_JOBS",
                            init: FindJobController(),
                            builder: (jobController) {
                              return OpenJobsSection(
                                onLoadMoreClick: controller.onMoreOpenClick,
                                relatedJobs: controller.openJobs!
                                    .map((job) => (
                                          job: job,
                                          onTap: () =>
                                              FindJobController.onJobClick(
                                                  job.slug!),
                                          onBookmark: () => jobController
                                              .onBookmarkJobClick(job.id!),
                                        ))
                                    .toList(),
                              );
                            }),
                      )
                  ],
                );
        },
      ),
    );
  }
}

class CompanyDetailsHeader extends StatelessWidget {
  const CompanyDetailsHeader({
    super.key,
    required this.controller,
  });

  final SingleCompanyController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 428 / 140,
          child: Image.network(
            controller.detailResponse?.companyDetails?.bannerUrl ??
                "https://images.unsplash.com/photo-1676970133020-c3e8a2a0cae4?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fGhvcml6b250YWwlMjBiYW5uZXJ8ZW58MHx8MHx8fDA%3D",
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => const Image(
              image: Assets.errorImage,
            ),
          ),
        ),
        24.height,
        Padding(
          padding: horizontal16,
          child: SizedBox(
            height: 64,
            child: Row(
              children: [
                SizedBox.square(
                  dimension: 64,
                  child: ClipRRect(
                    child: Image.network(
                      controller.detailResponse?.companyDetails?.logo ?? "",
                      errorBuilder: (context, error, stackTrace) => const Image(
                        image: Assets.errorImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                12.width,
                Expanded(
                  child: Padding(
                    padding: vertical4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          controller.detailResponse?.user?.name ?? "",
                          style: context.text.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        3.height,
                        Text(
                          controller.detailResponse?.companyDetails?.industry
                                  ?.name ??
                              "",
                          style: context.text.titleMedium?.copyWith(
                            fontWeight: FontWeight.w400,
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
        24.height,
        Padding(
          padding: horizontal16,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ElevatedButton.icon(
              onPressed: () => controller.onMoreOpenClick(),
              icon: const Icon(Icons.arrow_back),
              label: Text(
                LocaleKeys.open_positions.tr(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class OpenJobsSection extends StatelessWidget {
  const OpenJobsSection({
    super.key,
    this.onLoadMoreClick,
    required this.relatedJobs,
  });

  final List<({OpenJob job, VoidCallback onTap, VoidCallback onBookmark})>?
      relatedJobs;

  final VoidCallback? onLoadMoreClick;
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
              LocaleKeys.open_positions.tr(),
              style: context.text.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            18.height,
            for (var i in relatedJobs!) ...[
              8.height,
              SingleJobCard(
                bookmarked: null,
                postName: i.job.title!,
                postType: i.job.jobType!.name!,
                salaryRange:
                    "${LocaleKeys.salary.tr()}: \$${i.job.minSalary} - \$${i.job.maxSalary}",
                companyName: i.job.company?.user?.name ?? "",
                companyLocation: i.job.country!,
                companyIcon: i.job.company!.logo!,
                onItemClick: i.onTap,
                onBookmarkCallback: i.onBookmark,
              ),
              8.height,
            ],
            18.height,
            if (onLoadMoreClick != null) ...[
              InkWell(
                onTap: onLoadMoreClick,
                child: Text(
                  LocaleKeys.view_more_jobs.tr(),
                  style: context.text.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.color?.primary,
                  ),
                ),
              ),
              18.height,
            ],
          ],
        ),
      ),
    );
  }
}

class CompanyContactSection extends StatelessWidget {
  const CompanyContactSection({
    super.key,
    required this.controller,
  });

  final SingleCompanyController controller;

  @override
  Widget build(BuildContext context) {
    const divider = Divider(
      height: 1,
      indent: 12,
      endIndent: 12,
    );

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
              LocaleKeys.contact_information.tr(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.text.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            16.height,
            if (controller.detailResponse?.companyDetails?.website != null)
              ContactInformationTile(
                leading: const Icon(
                  Icons.language,
                  size: 32,
                ),
                title: LocaleKeys.website.tr().toUpperCase(),
                data: controller.detailResponse?.companyDetails?.website ?? "",
              ),
            divider,
            if (controller.companyUser?.contactInfo?.phone != null)
              ContactInformationTile(
                leading: const Icon(
                  Icons.ring_volume_outlined,
                  size: 32,
                ),
                title: LocaleKeys.phone.tr().toUpperCase(),
                data: controller.detailResponse?.user?.contactInfo?.phone ?? "",
              ),
            divider,
            if (controller.detailResponse?.user?.contactInfo?.email != null)
              ContactInformationTile(
                leading: const Icon(
                  Icons.mail_outline,
                  size: 32,
                ),
                title: LocaleKeys.email_address.tr().toUpperCase(),
                data: controller.detailResponse?.user?.contactInfo?.email ?? "",
              ),
            divider,
            20.height,
            Text(
              "${LocaleKeys.share_this_profile.tr()}:",
              style: context.text.titleMedium,
            ),
            12.height,
            Wrap(
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    padding: horizontal12 + vertical8,
                    backgroundColor: context.color?.primary.withOpacity(0.1),
                  ),
                  onPressed: controller.copyWebLink,
                  icon: Transform.rotate(
                    angle: 15,
                    child: const Icon(
                      Icons.insert_link_rounded,
                    ),
                  ),
                  label: Text(
                    LocaleKeys.copy_links.tr(),
                  ),
                ),
                SquaredIconButton(
                  icon: const SvgIcon(
                    Assets.twitterIcon,
                  ),
                  onTap: controller.shareTwitter,
                ),
                SquaredIconButton(
                  icon: const SvgIcon(
                    Assets.facebookIcon,
                  ),
                  onTap: controller.shareFacebook,
                ),
                SquaredIconButton(
                  icon: const SvgIcon(
                    Assets.telegramIcon,
                  ),
                  onTap: controller.shareTelegram,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ContactInformationTile extends StatelessWidget {
  const ContactInformationTile({
    super.key,
    required this.data,
    required this.title,
    required this.leading,
  });
  final String data;
  final String title;
  final Widget leading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: vertical20,
      child: Row(
        children: [
          SizedBox.square(
            dimension: 32,
            child: leading,
          ),
          12.width,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: context.text.bodySmall?.copyWith(
                    color: context.color?.extra,
                  ),
                ),
                4.height,
                Text(
                  data,
                  style: context.text.titleMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CompanyOverviewSection extends StatelessWidget {
  const CompanyOverviewSection({
    super.key,
    required this.controller,
  });

  final SingleCompanyController controller;

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
            Row(
              children: [
                Expanded(
                  child: OverviewDataTile(
                    title: "${LocaleKeys.founded_in.tr()}: ".toUpperCase(),
                    data: (controller.detailResponse?.companyDetails
                                ?.establishmentDate ==
                            null)
                        ? "Unknown"
                        : dMonthY.format(DateTime.tryParse(controller
                                    .detailResponse
                                    ?.companyDetails
                                    ?.establishmentDate ??
                                "") ??
                            DateTime.now()),
                    icon: const Icon(Icons.calendar_today_outlined),
                  ),
                ),
                Expanded(
                  child: OverviewDataTile(
                    title: LocaleKeys.organization_type.tr().toUpperCase(),
                    data: controller.detailResponse?.companyDetails
                            ?.organization?.name ??
                        "",
                    icon: const Icon(Icons.timer_outlined),
                  ),
                ),
              ],
            ),
            20.height,
            Row(
              children: [
                Expanded(
                  child: OverviewDataTile(
                    title: LocaleKeys.team_size.tr().toUpperCase(),
                    data: controller
                            .detailResponse?.companyDetails?.teamSize?.name ??
                        "",
                    icon: const Icon(Icons.wallet_outlined),
                  ),
                ),
                Expanded(
                  child: OverviewDataTile(
                    title: "${LocaleKeys.industry_type.tr()}  ".toUpperCase(),
                    data: controller
                            .detailResponse?.companyDetails?.industry?.name ??
                        "",
                    icon: const Icon(Icons.work_outline_rounded),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CompanyDescriptionWidget extends StatelessWidget {
  const CompanyDescriptionWidget({
    super.key,
    required this.controller,
  });

  final SingleCompanyController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            LocaleKeys.description.tr(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.text.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          12.height,
          ReadMoreText(
            controller.detailResponse?.companyDetails?.bio ?? "",
            trimLines: 5,
            trimMode: TrimMode.Line,
            trimExpandedText: " Read Less",
            trimCollapsedText: " Read Full Description",
            style: context.text.bodyMedium?.copyWith(
              color: context.color?.extraText,
            ),
            lessStyle: context.text.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.color?.primary,
            ),
            moreStyle: context.text.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.color?.primary,
            ),
          ),
          /* 6.height,
          LimitedBox(
            maxHeight: 350,
            child: InkWell(
              onTap: controller.showFullDescription,
              child: Stack(
                children: [
                  Text(
                    controller.detailResponse?.companyDetails?.bio ?? "",
                    maxLines: 30,
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
          ) */
        ],
      ),
    );
  }
}
