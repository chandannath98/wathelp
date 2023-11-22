import 'package:flutter/material.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class VerticalIconText extends StatelessWidget {
  const VerticalIconText({
    super.key,
    this.space,
    this.textStyle,
    required this.icon,
    required this.text,
  });
  final Widget icon;
  final String text;
  final double? space;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        (space ?? 3).width,
        Text(
          text,
          style: context.text.bodyMedium,
        ),
      ],
    );
  }
}
