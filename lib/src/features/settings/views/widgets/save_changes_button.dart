import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:jobpilot/generated/locale_keys.g.dart';

class SaveChangesButton extends StatelessWidget {
  const SaveChangesButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: 160,
        child: ElevatedButton(
          onPressed: onTap,
          child: Text(
            LocaleKeys.save_changes.tr(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
