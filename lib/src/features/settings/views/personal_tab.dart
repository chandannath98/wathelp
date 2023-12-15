import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/border_radius.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/settings/controllers/personal_settings_controller.dart';
import 'package:jobpilot/src/global/widgets/app/custom_titled_drop_down.dart';
import 'package:jobpilot/src/global/widgets/app/custom_titled_text_field.dart';
import 'package:jobpilot/src/global/widgets/pick_image.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/form_validator_helper.dart';

import 'widgets/save_changes_button.dart';

class PersonalInformationTab extends StatelessWidget {
  const PersonalInformationTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: horizontal16,
        child: GetBuilder(
          init: PersonalSettingsController(),
          builder: (controller) {
            return Column(
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
            );
          },
        ),
      ),
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
        ListView.separated(
          itemCount: 4,
          shrinkWrap: true,
          padding: vertical16,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => 16.height,
          itemBuilder: (context, index) => const ResumeListTile(),
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
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: context.color?.theme,
      shape: const RoundedRectangleBorder(
        borderRadius: br4,
      ),
      title: Text(
        "Professional Resume",
      ),
      subtitle: Text(
        "Size: 4.5MB",
      ),
      trailing: PopupMenuButton(
        padding: vertical8,
        icon: Icon(Icons.more_horiz),
        splashRadius: 0.1,
        itemBuilder: (context) => [
          PopupMenuItem(
            padding: EdgeInsets.zero,
            child: ColoredBox(
              color: context.color?.primary.withOpacity(0.3) ?? Colors.grey,
              child: Padding(
                padding: horizontal12,
                child: Row(
                  children: [
                    Icon(
                      Icons.edit_note_rounded,
                      size: 20,
                    ),
                    12.width,
                    Text(
                      "Edit Resume",
                      style: context.text.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
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
          child: DottedBorder(
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
                  children: [
                    40.height,
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
                      "A photo larger than 400 pixels work best.\nMax photo size 5 MB.",
                      textAlign: TextAlign.center,
                      style: context.text.bodySmall?.copyWith(
                        color: context.color?.extra,
                      ),
                    ),
                    40.height,
                  ],
                ),
              ),
            ),
          ),
        ),
        16.height,
        Text("Name"),
        6.height,
        Row(
          children: [
            Expanded(
              child: TextFormField(
                focusNode: controller.firstNameFocus,
                controller: controller.firstNameController,
                validator: FieldValidator.validate(
                  name: "First Name",
                  [],
                ),
                decoration: const InputDecoration(
                  hintText: "First name...",
                ),
                onFieldSubmitted: (value) =>
                    controller.lastNameFocus.requestFocus(),
              ),
            ),
            12.width,
            Expanded(
              child: TextFormField(
                focusNode: controller.lastNameFocus,
                controller: controller.lastNameController,
                validator: FieldValidator.validate(
                  name: "Last Name",
                  [],
                ),
                // onFieldSubmitted: (value) => emailFocus.requestFocus(),
                decoration: const InputDecoration(
                  hintText: "Last name...",
                ),
              ),
            ),
          ],
        ),
        16.height,
        CustomTitledTextFormField(
          title: "Title/Headline",
        ),
        16.height,
        CustomTitledDropdownField(
          title: "Experience",
          onChange: (value) {},
          fieldList: [
            (value: 1, title: "Education"),
            (value: 2, title: "Vacation"),
            (value: 3, title: "Chillox"),
            (value: 4, title: "Finished"),
          ],
        ),
        16.height,
        CustomTitledDropdownField(
          title: "Education",
          onChange: (value) {},
          fieldList: [
            (value: 1, title: "Education"),
            (value: 2, title: "Vacation"),
            (value: 3, title: "Chillox"),
            (value: 4, title: "Finished"),
          ],
        ),
        16.height,
        Text("Personal Website"),
        6.height,
        TextFormField(
          focusNode: controller.firstNameFocus,
          controller: controller.firstNameController,
          validator: FieldValidator.validate(
            name: "First Name",
            [],
          ),
          decoration: InputDecoration(
            hintText: "Link/Url...",
            prefixIcon: Icon(
              Icons.link_rounded,
              color: context.color?.primary,
            ),
          ),
          onFieldSubmitted: (value) => controller.lastNameFocus.requestFocus(),
        ),
        16.height,
        SaveChangesButton(
          onTap: () {},
        ),
      ],
    );
  }
}
