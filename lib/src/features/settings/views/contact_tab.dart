import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/settings/controllers/contact_controller.dart';
import 'package:jobpilot/src/global/widgets/app/custom_titled_text_field.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
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
                        Text(
                          "Contact Information",
                          style: context.text.titleLarge?.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        16.height,
                        SinglePhoneNumberTile(
                          controller: controller.phoneTextController,
                          icon: const Row(
                            children: [
                              SizedBox.square(),
                            ],
                          ),
                          title: "Phone Number",
                        ),
                        16.height,
                        SinglePhoneNumberTile(
                          controller: controller.secondaryPhoneTextController,
                          icon: const Row(
                            children: [
                              SizedBox.square(),
                            ],
                          ),
                          title: "Secondary Number",
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
                        SaveChangesButton(
                          onTap: controller.saveCurrentContactData.withOverlay,
                        ),
                        24.height,
                        Text(
                          "Change Password",
                          style: context.text.titleLarge?.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        16.height,
                        CustomTitledTextFormField(
                          title: "Current Password",
                          hintText: "Password...",
                          isObscured: controller.hidePasswords,
                          suffixIcon: IconButton(
                            onPressed: controller.changeHidePasswords,
                            icon: controller.hidePasswords
                                ? const Icon(Icons.visibility_off_outlined)
                                : const Icon(Icons.visibility_outlined),
                          ),
                          controller: controller.passwordController,
                        ),
                        16.height,
                        CustomTitledTextFormField(
                          title: "New Password",
                          hintText: "Password...",
                          isObscured: controller.hidePasswords,
                          suffixIcon: IconButton(
                            onPressed: controller.changeHidePasswords,
                            icon: controller.hidePasswords
                                ? const Icon(Icons.visibility_off_outlined)
                                : const Icon(Icons.visibility_outlined),
                          ),
                          controller: controller.newPasswordController,
                        ),
                        16.height,
                        CustomTitledTextFormField(
                          title: "Confirm Password",
                          hintText: "Password...",
                          isObscured: controller.hidePasswords,
                          suffixIcon: IconButton(
                            onPressed: controller.changeHidePasswords,
                            icon: controller.hidePasswords
                                ? const Icon(Icons.visibility_off_outlined)
                                : const Icon(Icons.visibility_outlined),
                          ),
                          controller: controller.confirmPasswordController,
                        ),
                        16.height,
                        SaveChangesButton(
                          onTap: controller.updateUserPassword.withOverlay,
                        ),
                        24.height,
                        Text(
                          "Delete Account",
                          style: context.text.titleLarge?.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        16.height,
                        Text(
                          "If you delete your Jobpilot account, you will no longer be able to get information about the matched jobs, following employers, and job alert, shortlisted jobs and more. You will be abandoned from all the services of Jobpilot.com.",
                          style: context.text.bodyMedium?.copyWith(
                            color: context.color?.extra,
                          ),
                        ),
                        8.height,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton.icon(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.red,
                            ),
                            onPressed: () async {
                              final password =
                                  await _showAccountDeletePopup(context);
                              if (password != null && password.isNotEmpty) {
                                (() async =>
                                        controller.deleteUserAccount(password))
                                    .withOverlay();
                              }
                            },
                            label: const Text("Delete Account"),
                            icon: const Icon(Icons.cancel_outlined),
                          ),
                        ),
                        24.height,
                      ],
                    ),
                  ),
                );
        });
  }
}

Future<String?> _showAccountDeletePopup(BuildContext context) async =>
    await showDialog(
      context: context,
      builder: (context) => const DeleteAccountPopup(),
    );

class DeleteAccountPopup extends StatefulWidget {
  const DeleteAccountPopup({
    super.key,
  });

  @override
  State<DeleteAccountPopup> createState() => _DeleteAccountPopupState();
}

class _DeleteAccountPopupState extends State<DeleteAccountPopup> {
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Card(
          margin: horizontal12.copyWith(
            bottom: MediaQuery.viewInsetsOf(context).bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: (vertical16 + horizontal16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          SizedBox.square(
                            dimension: 64,
                            child: Image.asset(
                              Assets.accountDelete,
                            ),
                          ),
                          12.height,
                          Text(
                            LocaleKeys.account_delete_msg.tr(),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    16.height,
                    TextFormField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        hintText: "Enter password to confirm...",
                      ),
                    ),
                    8.height,
                    ElevatedButton.icon(
                      onPressed: () {
                        Get.back(result: passwordController.text);
                      },
                      icon: const Icon(Icons.delete_outline),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      label: Text(
                        LocaleKeys.close_delete_account.tr(),
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
