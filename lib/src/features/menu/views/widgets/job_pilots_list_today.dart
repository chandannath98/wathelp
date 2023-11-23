import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';

class MenuJobPilotListTile extends StatelessWidget {
  const MenuJobPilotListTile({
    super.key,
    required this.data,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final Widget icon;
  final String data;
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
        trailing: const Icon(Icons.chevron_right),
        horizontalTitleGap: 08,
        style: ListTileStyle.drawer,
        iconColor: context.color?.extraText,
        visualDensity: VisualDensity.compact,
        contentPadding: horizontal18 + vertical3,
        title: RichText(
          text: TextSpan(
            text: "$title:  ",
            style: TextStyle(
              color: context.color?.extraText,
            ),
            children: [
              TextSpan(
                text: data,
                style: context.text.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: context.color?.extraText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
