import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class BecomeEmployeeSection extends StatelessWidget {
  const BecomeEmployeeSection({
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
          "https://images.unsplash.com/photo-1617834659281-1666d3262af4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjE2fHxibHVlJTIwbWFuJTIwd2VsY29tZXxlbnwwfHwwfHx8MA%3D%3D",
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
                  LocaleKeys.employers_title.tr(),
                  style: context.text.titleLarge?.copyWith(
                    color: context.color?.theme,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                16.height,
                Text(
                  LocaleKeys.employers_description.tr(),
                  style: context.text.titleLarge?.copyWith(
                    color: context.color?.theme,
                  ),
                ),
                16.height,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: SizedBox(
                      width: 200,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: context.color?.primary,
                          backgroundColor: context.color?.theme,
                        ),
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
