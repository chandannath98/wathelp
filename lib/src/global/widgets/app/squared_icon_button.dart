import 'package:flutter/material.dart';
import 'package:jobpilot/src/constants/design/paddings.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';

class SquaredIconButton extends StatelessWidget {
  const SquaredIconButton({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final VoidCallback onTap;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: ColoredBox(
          color:
              context.color?.primary.withOpacity(0.1) ?? Colors.blue.shade100,
          child: Padding(
            padding: all8,
            child: icon,
          ),
        ),
      ),
    );
  }
}
