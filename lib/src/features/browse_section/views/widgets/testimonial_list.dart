import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class TestimonialListSection extends StatelessWidget {
  const TestimonialListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontal16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Client Testimonial",
            style: context.text.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          18.height,
          for (var i in List.generate(6, (index) => index)) ...[
            8.height,
            SingleTestimonialWidget(
              starCount: i,
              name: "Bessie Cooper",
              jobRole: "UI/UX Designer",
              quotation:
                  "Ut ullamcorper hendrerit tempor. Aliquam in rutrum dui. Maecenas ac placerat metus, in faucibus est.",
              profileImage:
                  "https://images.unsplash.com/photo-1698854607842-83327fd8690b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0OXx8fGVufDB8fHx8fA%3D%3D",
            ),
            8.height,
          ],
          18.height,
          InkWell(
            onTap: () {},
            child: Text(
              "Load More Testimonials",
              style: context.text.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.color?.primary,
              ),
            ),
          ),
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
              Expanded(
                child: Text(
                  "“${quotation * 2}”",
                  maxLines: 5,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.titleLarge,
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
                              8.height,
                              Text(
                                jobRole,
                                style: context.text.bodyMedium?.copyWith(
                                  color: context.color?.extra,
                                ),
                              ),
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
