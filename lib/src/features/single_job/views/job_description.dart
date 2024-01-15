import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/single_job/controllers/single_job_controller.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class JobDescriptionHtmlWidget extends StatelessWidget {
  const JobDescriptionHtmlWidget({
    super.key,
    required this.slug,
    required this.controller,
  });

  final String slug;
  final SingleJobController? controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SingleJobController>(
      init: controller ?? SingleJobController(slug: slug),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: Text(
            "Job Description: ${controller.jobDetails?.title ?? ""}",
          ),
        ),
        body: Padding(
          padding: horizontal16,
          child: Column(
            children: [
              Expanded(
                child: controller.isLoading
                    ? const Center(
                        child: LoadingIndicator(),
                      )
                    : SingleChildScrollView(
                        child: HtmlWidget(
                          controller.jobDetails?.description ?? "",
                          textStyle: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
              ),
              SafeArea(
                child: Column(
                  children: [
                    5.height,
                    Padding(
                      padding: vertical3,
                      child: Row(
                        children: [
                          Expanded(
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: ElevatedButton.icon(
                                onPressed: (controller.isLoading ||
                                        controller.jobDetails == null)
                                    ? null
                                    : controller.onApplyClick,
                                icon: const Icon(Icons.arrow_back),
                                label: const Text(
                                  "Apply Now",
                                  textAlign: TextAlign.center,
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
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
