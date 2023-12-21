import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/settings/controllers/social_settings_controller.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/extensions/string_extensions.dart';

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
                          ListView.separated(
                            itemBuilder: (context, index) {
                              final userSocial = controller.userSocials![index];
                              return SingleSocialSettingTile(
                                linkIndex: index + 1,
                                title: userSocial.socialMedia?.upperCaseFirst ??
                                    "",
                                link: userSocial.url ?? "",
                                icon: Image.network(
                                  "https://cdn-icons-png.flaticon.com/128/4401/4401395.png",
                                ),
                                onRemoveCall: (value) {},
                              );
                            },
                            shrinkWrap: true,
                            itemCount: controller.userSocials!.length,
                            separatorBuilder: (context, index) => 16.height,
                          ),
                        16.height,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton.icon(
                            onPressed: () {},
                            label: const Text("Add New Social Link"),
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
    required this.onRemoveCall,
    required this.link,
  });

  final Widget icon;
  final String title;
  final int linkIndex;
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
              onTap: () => onRemoveCall(linkIndex),
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
