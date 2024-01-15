import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class RegisterNowSection extends StatelessWidget {
  const RegisterNowSection({
    super.key,
    required this.onActionClick,
  });

  final VoidCallback onActionClick;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 428 / 272,
      child: Ink.image(
        fit: BoxFit.cover,
        onImageError: (exception, stackTrace) => const Image(
          image: Assets.errorImage,
        ),
        image: const NetworkImage(
          "https://images.unsplash.com/photo-1629131726692-1accd0c53ce0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA2fHxjb21wdXRlcnxlbnwwfHwwfHx8MA%3D%3D",
        ),
        child: InkWell(
          onTap: onActionClick,
          child: Padding(
            padding: horizontal16 + vertical16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  LocaleKeys.candidate_title.tr(),
                  style: context.text.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                16.height,
                Text(
                  LocaleKeys.candidate_description.tr(),
                  style: context.text.titleLarge,
                ),
                16.height,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: SizedBox(
                      width: 200,
                      child: ElevatedButton.icon(
                        onPressed: onActionClick,
                        icon: const Icon(
                          Icons.arrow_back,
                        ),
                        label: Text(
                          LocaleKeys.register_now.tr(),
                        ),
                      ),
                    ),
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
