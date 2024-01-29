import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/settings/controllers/social_settings_controller.dart';
import 'package:jobpilot/src/global/widgets/app/custom_titled_drop_down.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/extensions/string_extensions.dart';
import 'package:jobpilot/src/utilities/form_validator_helper.dart';

class SocialInformationTab extends StatelessWidget {
  const SocialInformationTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SocialSettingsController(),
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
                        if (controller.userSocials != null)
                          (controller.userSocials!.isEmpty)
                              ? Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: vertical18,
                                    child: Text(
                                      "No social links available.",
                                      style: context.text.bodyMedium?.copyWith(
                                        color: context.color?.extra,
                                      ),
                                    ),
                                  ),
                                )
                              : ListView.separated(
                                  itemBuilder: (context, index) {
                                    final userSocial =
                                        controller.userSocials![index];
                                    return SingleSocialSettingTile(
                                      linkIndex: index + 1,
                                      linkId: userSocial.id!,
                                      title: userSocial
                                              .socialMedia?.upperCaseFirst ??
                                          "",
                                      link: userSocial.url ?? "",
                                      icon: Image.network(
                                        controller.getImageLink(
                                            userSocial.socialMedia!),
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                const Image(
                                          image: Assets.errorImage,
                                        ),
                                      ),
                                      onRemoveCall: (value) {
                                        (() async => await controller
                                                .removeSocialLink(value))
                                            .withOverlay();
                                      },
                                    );
                                  },
                                  shrinkWrap: true,
                                  itemCount: controller.userSocials!.length,
                                  separatorBuilder: (context, index) =>
                                      16.height,
                                ),
                        16.height,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton.icon(
                            onPressed: () async {
                              final data = await addSocialMediaPopup(
                                  context,
                                  controller.socialOptions ?? {},
                                  controller.getImageLink);

                              if (data != null) {
                                (() async =>
                                        await controller.addNewSocialLink(data))
                                    .withOverlay();
                              }
                            },
                            label:
                                Text("${LocaleKeys.add_new_social_link.tr()}"),
                            icon: const Icon(Icons.add_circle_outline_rounded),
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

class SingleSocialSettingTile extends StatelessWidget {
  const SingleSocialSettingTile({
    super.key,
    required this.icon,
    required this.title,
    required this.linkIndex,
    required this.linkId,
    required this.onRemoveCall,
    required this.link,
  });

  final Widget icon;
  final String title;
  final int linkIndex;
  final int linkId;
  final ValueChanged<int> onRemoveCall;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Link $linkIndex"),
            const Spacer(),
            InkWell(
              onTap: () => onRemoveCall(linkId),
              child: Padding(
                padding: horizontal4,
                child: Text(
                  "Remove",
                  style: context.text.bodyMedium?.copyWith(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
        6.height,
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
                      SizedBox.square(
                        dimension: 24,
                        child: icon,
                      ),
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
                  child: Padding(
                    padding: vertical8 + horizontal16,
                    child: Text(
                      link,
                      style: context.text.bodyLarge?.copyWith(
                        color: context.color?.extra,
                      ),
                    ),
                  ),
                  /* TextFormField(
                    decoration: InputDecoration(
                      hintText: "Link/Url",
                      isDense: true,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: vertical8 + horizontal16,
                    ),
                  ) */
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Future<({String key, String url})?> addSocialMediaPopup(BuildContext context,
    Map<String, String> socialList, String Function(String) linkGetter) async {
  return await showDialog(
    context: context,
    builder: (context) => SocialPickerWidget(
      linkGetter: linkGetter,
      optionList: socialList,
    ),
  );
}

class SocialPickerWidget extends StatefulWidget {
  const SocialPickerWidget({
    super.key,
    required this.optionList,
    required this.linkGetter,
  });

  final Map<String, String> optionList;
  final String Function(String) linkGetter;

  @override
  State<SocialPickerWidget> createState() => _SocialPickerWidgetState();
}

class _SocialPickerWidgetState extends State<SocialPickerWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController linkController;
  String selectedKey = "other";
  @override
  void initState() {
    super.initState();
    linkController = TextEditingController();
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
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: (vertical16 + horizontal16),
                  child: Column(
                    children: [
                      // 24.height,
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            SizedBox.square(
                              dimension: 48,
                              child: Padding(
                                padding: all4,
                                child: Image.network(
                                  widget.linkGetter(selectedKey),
                                  errorBuilder: (context, error, stackTrace) =>
                                      const Image(
                                    image: Assets.errorImage,
                                  ),
                                ),
                              ),
                            ),
                            16.width,
                            Expanded(
                              child: CustomTitledDropdownField<String>(
                                value:
                                    (widget.optionList.containsKey(selectedKey))
                                        ? selectedKey
                                        : null,
                                title: "${LocaleKeys.social_media.tr()}",
                                showTitle: false,
                                onChange: (value) => setState(() {
                                  selectedKey = value!;
                                }),
                                fieldList: widget.optionList.entries
                                    .map(
                                      (e) => (
                                        value: e.key,
                                        title: e.value,
                                      ),
                                    )
                                    .toList(),
                              ),
                            )
                          ],
                        ),
                      ),
                      16.height,
                      TextFormField(
                        controller: linkController,
                        validator: FieldValidator.validate(
                          name: "Link/Url",
                          [
                            isRequired,
                            (value, name) =>
                                (!value.isURL, "Enter a valid URL.")
                          ],
                        ),
                        decoration: const InputDecoration(
                          hintText: "Link/Url",
                        ),
                      ),
                      16.height,
                      ElevatedButton.icon(
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            Get.back(result: (
                              key: selectedKey,
                              url: linkController.text
                            ));
                          }
                        },
                        icon: const Icon(
                          Icons.add,
                        ),
                        label: Text(
                          "${LocaleKeys.add_new_social_link.tr()}",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
