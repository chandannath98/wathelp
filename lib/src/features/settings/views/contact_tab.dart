import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/settings/controllers/contact_controller.dart';
import 'package:jobpilot/src/global/widgets/app/custom_titled_drop_down.dart';
import 'package:jobpilot/src/global/widgets/app/custom_titled_text_field.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

import 'widgets/save_changes_button.dart';

class ContactSettingsTab extends StatelessWidget {
  const ContactSettingsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactController>(
        init: ContactController(),
        builder: (controller) {
          return controller.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: horizontal16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        24.height,
                        SinglePhoneNumberTile(
                          controller: controller.phoneTextController,
                          icon: Row(
                            children: [
                              SizedBox.square(),
                            ],
                          ),
                          title: "Phone Number",
                        ),
                        16.height,
                        SinglePhoneNumberTile(
                          controller: controller.secondaryPhoneTextController,
                          icon: Row(
                            children: [
                              SizedBox.square(),
                            ],
                          ),
                          title: "Secondary Number",
                        ),
                        16.height,
                        CustomTitledTextFormField(
                          title: "Email",
                          hintText: "Email address",
                          controller: controller.secondaryEmailTextController,
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: context.color?.primary,
                          ),
                        ),
                        16.height,
                        SinglePhoneNumberTile(
                          controller: controller.whatsappTextController,
                          icon: Row(
                            children: [
                              SizedBox.square(
                                dimension: 24,
                                child: Image.network(
                                  controller.getImageLink('whatsapp'),
                                ),
                              ),
                            ],
                          ),
                          title: "Whatsapp Number",
                        ),
                        16.height,
                        SaveChangesButton(
                          onTap: () {},
                        ),
                        24.height,
                      ],
                    ),
                  ),
                );
        });
  }
}

class SinglePhoneNumberTile extends StatelessWidget {
  const SinglePhoneNumberTile({
    super.key,
    this.controller,
    required this.icon,
    required this.title,
  });

  final Widget icon;
  final String title;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.zero,
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: Padding(
                  padding: vertical8 + horizontal16,
                  child: Row(
                    children: [
                      icon,
                      8.width,
                      Text(
                        title,
                        style: context.text.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: context.color?.extra,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1,
                color: context.color?.extra,
              ),
              SizedBox(
                height: 40,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: "Phone number...",
                      isDense: true,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: vertical8 + horizontal16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
