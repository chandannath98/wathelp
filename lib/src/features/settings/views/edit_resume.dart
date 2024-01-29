import 'dart:developer';
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/design/border_radius.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/resume/resume_data/resume_data.dart';

import 'package:jobpilot/src/features/settings/controllers/resume_controller.dart';
import 'package:jobpilot/src/global/widgets/app/custom_titled_text_field.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

Future<File?> _pickPdfResume() async {
  try {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      dialogTitle: "Using a custom title!",
    );
    if (result?.files.isNotEmpty ?? false) {
      final file = result!.files.first;
      return File(file.path!);
    } else {
      log("No pdf files were picked!");
    }
  } catch (e, s) {
    log("#PickResumeError", error: e, stackTrace: s);
  }
  return null;
}

class EditResumeScreen extends StatelessWidget {
  const EditResumeScreen({
    super.key,
    this.resumeData,
  });

  final ResumeData? resumeData;
  bool get isEdit => resumeData != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          isEdit
              ? "${LocaleKeys.upload_cv_resume.tr()}"
              : "${LocaleKeys.add_cv_resume.tr()}",
        ),
      ),
      body: Padding(
        padding: horizontal16,
        child: GetBuilder(
            init: ResumeController(currentResume: resumeData),
            builder: (controller) {
              return Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          24.height,
                          CustomTitledTextFormField(
                            hintText: "",
                            title: "${LocaleKeys.cv_resume_name.tr()}",
                            controller: controller.resumeNameController,
                          ),
                          if (controller.nameError != null) ...[
                            6.height,
                            Text(
                              controller.nameError!,
                              style: context.text.bodyMedium?.copyWith(
                                color: Colors.red,
                              ),
                            ),
                          ],
                          12.height,
                          Text("${LocaleKeys.upload_cv_resume.tr()}"),
                          8.height,
                          PickResumeWidget(
                            fileName: controller.resumeName,
                            fileSizeMB: controller.getResumeSize,
                            onAddFileClick: () async {
                              final res = await _pickPdfResume();
                              if (res != null) {
                                await controller.setResumeFile(res);
                              }
                            }.withOverlay,
                          ),
                          if (controller.resumeError != null) ...[
                            6.height,
                            Text(
                              controller.resumeError!,
                              style: context.text.bodyMedium?.copyWith(
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: vertical12,
                      child: ElevatedButton.icon(
                        onPressed: isEdit
                            ? controller.updateResume.withOverlay
                            : controller.createResume.withOverlay,
                        icon: const Icon(Icons.add_circle_outline_outlined),
                        label: Text(
                          isEdit
                              ? "${LocaleKeys.update_cv_resume.tr()}"
                              : "${LocaleKeys.add_cv_resume.tr()}",
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}

class PickResumeWidget extends StatelessWidget {
  const PickResumeWidget({
    super.key,
    this.fileSizeMB,
    this.fileName,
    required this.onAddFileClick,
  });

  final double? fileSizeMB;
  final String? fileName;
  final VoidCallback onAddFileClick;

  @override
  Widget build(BuildContext context) {
    String? sizeString;
    if (fileSizeMB != null) {
      sizeString = fileSizeMB!.toStringAsFixed(2);
    }
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(8),
      color: context.color?.extra ?? Colors.grey,
      child: InkWell(
        borderRadius: br8,
        onTap: onAddFileClick,
        child: Padding(
          padding: all20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.file_upload_outlined,
                size: 64,
                color: context.color?.extra,
              ),
              20.height,
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: (fileName != null)
                      ? [
                          TextSpan(
                            text: fileName!,
                            style: context.text.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: " ($sizeString MB)",
                            style: context.text.titleMedium?.copyWith(
                              color: context.color?.extra,
                            ),
                          ),
                        ]
                      : [
                          TextSpan(
                            text: "${LocaleKeys.browse_file.tr()}",
                            style: context.text.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: " and pick one.",
                            style: context.text.titleMedium?.copyWith(
                              color: context.color?.extra,
                            ),
                          ),
                        ],
                ),
              ),
              8.height,
              Text(
                "Only PDF format available. Max file size 12 MB.",
                textAlign: TextAlign.center,
                style: context.text.bodySmall?.copyWith(
                  color: context.color?.extra,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
