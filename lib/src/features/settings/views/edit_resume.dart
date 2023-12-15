import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/border_radius.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/resume/resume_data.dart';
import 'package:jobpilot/src/global/widgets/app/custom_titled_text_field.dart';
import 'package:jobpilot/src/global/widgets/pick_image.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

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
          isEdit ? "Edit Resume" : "Add New CV/Resume",
        ),
      ),
      body: Padding(
        padding: horizontal16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            24.height,
            CustomTitledTextFormField(
              hintText: "",
              title: "Cv/Resume Name",
            ),
            12.height,
            Text("Upload your Cv/Resume"),
            8.height,
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(8),
              color: context.color?.extra ?? Colors.grey,
              child: InkWell(
                borderRadius: br8,
                onTap: () async {
                  final res = await pickImage(context);
                  if (res != null) {}
                },
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
                          children: [
                            TextSpan(
                              text: "Browse file",
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
                        "Only PDF format available . Max file size 12 MB.",
                        textAlign: TextAlign.center,
                        style: context.text.bodySmall?.copyWith(
                          color: context.color?.extra,
                        ),
                      ),
                    ],
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
