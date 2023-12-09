import 'package:flutter/material.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class OverviewDataTile extends StatelessWidget {
  const OverviewDataTile({
    super.key,
    required this.title,
    required this.data,
    required this.icon,
  });

  final String title;
  final String data;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: SizedBox.square(
            dimension: 32,
            child: FittedBox(
              child: icon,
            ),
          ),
        ),
        8.height,
        Text(
          title,
          style: context.text.titleSmall?.copyWith(
            height: 1,
            fontSize: 12,
            color: context.color?.extra,
            fontWeight: FontWeight.w400,
          ),
        ),
        4.height,
        Text(
          data,
          style: context.text.titleSmall?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
