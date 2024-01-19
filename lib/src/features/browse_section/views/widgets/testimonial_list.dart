import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/server/repositories/home/models/browse/testimonial/testimonial.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class TestimonialListSection extends StatelessWidget {
  const TestimonialListSection({
    super.key,
    this.dataList,
    required this.isLoading,
  });

  final bool isLoading;
  final List<Testimonial>? dataList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            LocaleKeys.clients_testimonial.tr(),
            style: context.text.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          18.height,
          for (Testimonial i in dataList?.take(5) ?? <Testimonial>[]) ...[
            8.height,
            SingleTestimonialWidget(
              starCount: 5,
              name: i.name ?? "",
              jobRole: i.designation ?? "",
              quotation: i.description ?? "",
              profileImage: i.image ?? "",
            ),
            8.height,
          ],
          /* 18.height,
          InkWell(
            onTap: () {},
            child: Text(
              "Load More Testimonials",
              style: context.text.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.color?.primary,
              ),
            ),
          ), */
          18.height,
        ],
      ),
    );
  }
}

class SingleTestimonialWidget extends StatelessWidget {
  const SingleTestimonialWidget({
    super.key,
    required this.starCount,
    required this.name,
    required this.jobRole,
    required this.quotation,
    required this.profileImage,
  });

  final int starCount;
  final String name;
  final String jobRole;
  final String quotation;
  final String profileImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: AspectRatio(
        aspectRatio: 380 / 236,
        child: Padding(
          padding: all16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: List.generate(
                  5,
                  (index) => const Icon(
                    Icons.star_rounded,
                    size: 32,
                    color: Colors.amber,
                  ),
                ),
              ),
              6.height,
              Flexible(
                fit: FlexFit.tight,
                child: RichText(
                  maxLines: 4,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    style: context.text.titleLarge,
                    children: [
                      const TextSpan(
                        text: "“",
                      ),
                      TextSpan(
                        text: quotation,
                      ),
                      const TextSpan(
                        text: "”",
                      ),
                    ],
                  ),
                ),
              ),
              6.height,
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    foregroundImage: NetworkImage(
                      profileImage,
                    ),
                  ),
                  8.width,
                  Expanded(
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Padding(
                          padding: all8,
                          child: SvgPicture.asset(
                            "assets/icon/quotation.svg",
                          ),
                        ),
                        Padding(
                          padding: all8,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: context.text.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (jobRole.isNotEmpty) ...[
                                8.height,
                                Text(
                                  jobRole,
                                  style: context.text.bodyMedium?.copyWith(
                                    color: context.color?.extra,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
