import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/border_radius.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/resume/resume_data/resume_data.dart';
import 'package:jobpilot/src/features/settings/controllers/personal_settings_controller.dart';
import 'package:jobpilot/src/features/settings/views/edit_resume.dart';
import 'package:jobpilot/src/global/widgets/app/custom_titled_drop_down.dart';
import 'package:jobpilot/src/global/widgets/app/custom_titled_text_field.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/global/widgets/pick_image.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

import 'widgets/save_changes_button.dart';

class PersonalInformationTab extends StatelessWidget {
  const PersonalInformationTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: PersonalSettingsController(),
      builder: (controller) {
        return (controller.isLoading)
            ? const SizedBox.expand(
                child: Center(
                  child: LoadingIndicator(),
                ),
              )
            : SingleChildScrollView(
                child: Padding(
                  padding: horizontal16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      24.height,
                      BasicInformationSection(
                        controller: controller,
                      ),
                      24.height,
                      ResumeListSection(
                        controller: controller,
                      ),
                      24.height,
                    ],
                  ),
                ),
              );
      },
    );
  }
}

class ResumeListSection extends StatelessWidget {
  const ResumeListSection({
    super.key,
    required this.controller,
  });

  final PersonalSettingsController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Your Resume/CV",
          style: context.text.titleLarge?.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        if (controller.resumeList != null)
          ListView.separated(
            itemCount: controller.resumeList!.length,
            shrinkWrap: true,
            padding: vertical16,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => 16.height,
            itemBuilder: (context, index) => ResumeListTile(
              resumeData: controller.resumeList![index],
              onEditResumeClick: controller.onEditResume,
              onDeleteResumeClick: controller.onDeleteResume,
            ),
          ),
        DottedBorder(
          padding: EdgeInsets.zero,
          borderType: BorderType.RRect,
          radius: const Radius.circular(4),
          color: context.color?.extra ?? Colors.grey,
          child: ListTile(
            tileColor: context.color?.theme,
            onTap: controller.onAddResumeClick,
            shape: RoundedRectangleBorder(borderRadius: br4),
            title: Text(
              "Add Cv/Resume",
              style: context.text.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              "Browse file or drop here. only pdf",
            ),
            leading: Icon(
              Icons.add_circle_outline_outlined,
              size: 32,
              color: context.color?.primary,
            ),
          ),
        ),
      ],
    );
  }
}

class ResumeListTile extends StatelessWidget {
  const ResumeListTile({
    super.key,
    required this.resumeData,
    required this.onEditResumeClick,
    required this.onDeleteResumeClick,
  });

  final ResumeData resumeData;
  final ValueChanged<ResumeData> onEditResumeClick;
  final ValueChanged<ResumeData> onDeleteResumeClick;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: context.color?.theme,
      shape: const RoundedRectangleBorder(
        borderRadius: br4,
      ),
      title: Text(
        resumeData.name ?? "",
      ),
      subtitle: Text(
        "Size: ${resumeData.fileSize ?? "??"}",
      ),
      trailing: PopupMenuButton(
        padding: vertical12,
        icon: const Icon(Icons.more_horiz),
        splashRadius: 0.1,
        itemBuilder: (context) => [
          PopupMenuItem(
            height: 0,
            padding: EdgeInsets.zero,
            onTap: () async => onEditResumeClick(resumeData),
            child: ResumeActionMenuOption(
              title: "Edit Resume",
              icon: Icons.edit_square,
              baseColor: context.color?.primary ?? Colors.green,
            ),
          ),
          PopupMenuItem(
            height: 0,
            padding: EdgeInsets.zero,
            onTap: (() async => onDeleteResumeClick(resumeData)).withOverlay,
            child: ResumeActionMenuOption(
              title: "Delete Resume",
              icon: Icons.delete_outline_rounded,
              baseColor: Colors.red.shade700,
            ),
          ),
        ],
      ),
      leading: Icon(
        Icons.view_timeline_rounded,
        size: 32,
        color: context.color?.primary,
      ),
    );
  }
}

class ResumeActionMenuOption extends StatelessWidget {
  const ResumeActionMenuOption({
    super.key,
    required this.title,
    required this.icon,
    required this.baseColor,
  });

  final String title;
  final IconData icon;
  final Color baseColor;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: baseColor.withOpacity(0.1),
      child: Padding(
        padding: horizontal16 + vertical12,
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: baseColor,
            ),
            12.width,
            Expanded(
              child: Text(
                title,
                style: context.text.labelLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: baseColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BasicInformationSection extends StatelessWidget {
  const BasicInformationSection({
    super.key,
    required this.controller,
  });

  final PersonalSettingsController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Basic Information",
          style: context.text.titleLarge?.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        16.height,
        Text(
          "Profile Picture",
        ),
        8.height,
        Align(
          alignment: Alignment.centerLeft,
          child: SetProfilePictureWidget(
            newFile: controller.profileImage,
            currentImage: controller.currentPersonalData?.imageUrl,
            onTap: () async {
              final res = await pickImage(context);
              if (res != null) {
                controller.updateProfileImage(res);
              }
            },
          ),
        ),
        16.height,
        6.height,
        CustomTitledTextFormField(
          title: "Name",
          initialValue: controller.currentPersonalData?.name,
          onChange: (value) => controller.updateName(value),
        ),
        16.height,
        CustomTitledTextFormField(
          title: "Title/Headline",
          initialValue: controller.currentPersonalData?.title,
          onChange: (value) => controller.updateTitle(value),
        ),
        16.height,
        CustomTitledDropdownField(
          title: "Experience",
          onChange: (value) => controller.updateExperienceId(value!),
          value: controller.currentPersonalData?.experienceId,
          fieldList: controller.experienceOptions
              ?.map((e) => (
                    value: e.id,
                    title: e.name ?? "",
                  ))
              .toList(),
        ),
        16.height,
        CustomTitledDropdownField(
          title: "Education",
          onChange: (value) => controller.updateEducationId(value!),
          value: controller.currentPersonalData?.educationId,
          fieldList: controller.educationOptions
              ?.map((e) => (
                    value: e.id,
                    title: e.name ?? "",
                  ))
              .toList(),
        ),
        16.height,
        CustomTitledTextFormField(
          hintText: "DD/MM/YYYY",
          title: "Date of Birth",
          inputType: TextInputType.datetime,
          onChange: (value) => controller.updateBirthDate(value),
          initialValue: controller.currentPersonalData?.dateOfBirth,
          prefixIcon: Icon(
            Icons.calendar_today_outlined,
            color: context.color?.primary,
          ),
        ),
        16.height,
        CustomTitledTextFormField(
          hintText: "Link/Url...",
          title: "Personal Website",
          onChange: (value) => controller.updateWebsite(value),
          initialValue: controller.currentPersonalData?.website,
          prefixIcon: Icon(
            Icons.link_rounded,
            color: context.color?.primary,
          ),
        ),
        16.height,
        SaveChangesButton(
          onTap: controller.saveCurrentPersonalData.withOverlay,
        ),
      ],
    );
  }
}

class SetProfilePictureWidget extends StatelessWidget {
  const SetProfilePictureWidget({
    super.key,
    required this.onTap,
    this.newFile,
    this.currentImage,
  });

  final VoidCallback onTap;
  final File? newFile;
  final String? currentImage;

  @override
  Widget build(BuildContext context) {
    ImageProvider? provider;
    if (newFile != null) {
      provider = FileImage(newFile!);
    } else if (currentImage != null) {
      provider = NetworkImage(currentImage!);
    }
    return SizedBox.square(
      dimension: MediaQuery.sizeOf(context).width * 0.7,
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(8),
        color: context.color?.extra ?? Colors.grey,
        child: InkWell(
          borderRadius: br8,
          onTap: onTap,
          child: (provider != null)
              ? Padding(
                  padding: all3,
                  child: ClipRRect(
                    borderRadius: br5,
                    child: SizedBox.expand(
                      child: Image(
                        image: provider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: all20,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.file_upload_outlined,
                          size: 64,
                          color: context.color?.extra,
                        ),
                        20.height,
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Attach a photo",
                                style: context.text.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: " or take one.",
                                style: context.text.titleMedium?.copyWith(
                                  color: context.color?.extra,
                                ),
                              ),
                            ],
                          ),
                        ),
                        8.height,
                        Text(
                          "A photo larger than 400 pixels work best.\n Max photo size 5 MB.",
                          textAlign: TextAlign.center,
                          style: context.text.bodySmall?.copyWith(
                            color: context.color?.extra,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
