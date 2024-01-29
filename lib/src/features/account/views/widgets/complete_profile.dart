import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/features/settings/views/settings.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class CompleteProfileSection extends StatelessWidget {
  const CompleteProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.red.shade900,
      child: Padding(
        padding: all16,
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    foregroundImage: NetworkImage(
                      AuthController.find.currentUser?.photoUrl ?? "",
                    ),
                  ),
                  10.width,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Your profile editing is not completed.",
                          style: context.text.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: context.color?.theme,
                          ),
                        ),
                        6.height,
                        Text(
                          LocaleKeys
                              .complete_your_profile_before_applying_to_jobs_add_your_information_resume_and_profile_picture_for_a_better_chance_of_getting_hired
                              .tr(),
                          style: context.text.bodySmall?.copyWith(
                            color: context.color?.theme,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            16.height,
            Align(
              alignment: Alignment.centerLeft,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: SizedBox(
                  width: 160,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red.shade900,
                      backgroundColor: context.color?.theme,
                    ),
                    onPressed: () => Get.to(() => const SettingsScreen()),
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                    label: Text(
                      // ignore: unnecessary_string_interpolations
                      "${LocaleKeys.edit_profile.tr()}",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
