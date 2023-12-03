import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';

class CustomRadioListTile<T> extends StatelessWidget {
  const CustomRadioListTile({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onTap,
  });

  final T value;
  final T? groupValue;
  final String title;
  final ValueChanged<T?> onTap;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.theme.copyWith(
        iconTheme: IconThemeData(
          color: context.color?.extraText,
        ),
      ),
      child: ListTile(
        dense: true,
        horizontalTitleGap: 0,
        style: ListTileStyle.drawer,
        iconColor: context.color?.extraText,
        visualDensity: VisualDensity.compact,
        contentPadding: horizontal6,
        leading: Radio<T>(
          value: value,
          onChanged: onTap,
          groupValue: groupValue,
          activeColor: context.color?.primary,
          visualDensity: VisualDensity.compact,
        ),
        onTap: () => onTap(value),
        title: Text(
          title,
          style: context.text.bodyMedium?.copyWith(
            color: context.color?.extraText,
          ),
        ),
      ),
    );
  }
}
