import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/single_job/controllers/apply_job_controller.dart';
import 'package:jobpilot/src/global/widgets/app/custom_titled_drop_down.dart';
import 'package:jobpilot/src/services/theme/extensions.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class ApplyJobScreen extends StatelessWidget {
  const ApplyJobScreen({
    super.key,
    required this.jobId,
    required this.jobName,
  });

  final int jobId;
  final String jobName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          "Apply Job: $jobName",
        ),
      ),
      body: GetBuilder(
          init: ApplyJobController(jobId: jobId),
          builder: (controller) {
            return Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: horizontal16,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          24.height,
                          CustomTitledDropdownField(
                            title: "CV/Resume",
                            hintText: "Choose resume...",
                            onChange: (value) =>
                                controller.onResumeSelect(value!),
                            fieldList: controller.resumeList
                                ?.map((resume) =>
                                    (title: resume.name!, value: resume.id!))
                                .toList(),
                          ),
                          if (controller.resumeList != null &&
                              controller.resumeList!.isEmpty) ...[
                            6.height,
                            Text(
                              "*You currently don't have any resume. Go to settings and add resume to apply.",
                              style: context.text.bodyMedium?.copyWith(
                                color: Colors.red,
                              ),
                            ),
                          ],
                          24.height,
                          Text(
                            "Cover Letter",
                            style: context.text.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          8.height,
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight:
                                  MediaQuery.sizeOf(context).height * 0.5,
                            ),
                            child: TextFormField(
                              minLines: 15,
                              maxLines: null,
                              controller: controller.coverLetterController,
                              decoration: InputDecoration(
                                hintText: "Write down your biography here. "
                                    "Let the employers know who you are...",
                                hintMaxLines: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      5.height,
                      Padding(
                        padding: vertical3 + horizontal16,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: ElevatedButton.icon(
                            onPressed: (controller.isLoading)
                                ? null
                                : controller.apply.withOverlay,
                            icon: const Icon(Icons.arrow_back),
                            label: const Text(
                              "Apply Now",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
