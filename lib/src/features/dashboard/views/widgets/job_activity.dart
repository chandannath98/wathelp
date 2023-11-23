import 'package:flutter/material.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class JobActivityStatusWidget extends StatelessWidget {
  const JobActivityStatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check,
          size: 18,
          color: Colors.green,
        ),
        3.width,
        Text(
          "Active",
          style: context.text.bodySmall?.copyWith(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
