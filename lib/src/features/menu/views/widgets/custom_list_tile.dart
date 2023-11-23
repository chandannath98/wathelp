import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';

class MenuPageListTile extends StatelessWidget {
  const MenuPageListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final Widget icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.theme.copyWith(
        iconTheme: IconThemeData(
          color: context.color?.extraText,
        ),
      ),
      child: ListTile(
        onTap: onTap,
        dense: true,
        leading: icon,
        horizontalTitleGap: 08,
        style: ListTileStyle.drawer,
        iconColor: context.color?.extraText,
        visualDensity: VisualDensity.compact,
        contentPadding: horizontal18 + vertical3,
        title: Text(
          title,
          style: context.text.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.color?.extraText,
          ),
        ),
      ),
    );
  }
}
