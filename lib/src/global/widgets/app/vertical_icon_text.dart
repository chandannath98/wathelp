import 'package:flutter/material.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class VerticalIconText extends StatelessWidget {
  const VerticalIconText({
    super.key,
    this.space,
    this.maxLine,
    this.textStyle,
    required this.icon,
    required this.text,
    this.flexText = false,
  });
  final int? maxLine;
  final Widget icon;
  final String text;
  final double? space;
  final bool flexText;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final textWidget = (flexText)
        ? Flexible(
            child: Text(
              text,
              style: context.text.bodyMedium,
              maxLines: maxLine,
              overflow: TextOverflow.ellipsis,
            ),
          )
        : Text(
            text,
            style: context.text.bodyMedium,
          );
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        (space ?? 3).width,
        textWidget,
      ],
    );
  }
}
