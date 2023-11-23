import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
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
                  const CircleAvatar(
                    radius: 24,
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
                          "Complete your profile editing & build your custom resume.",
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
                  width: 150,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red.shade900,
                      backgroundColor: context.color?.theme,
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                    label: const Text(
                      "Edit Now",
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
