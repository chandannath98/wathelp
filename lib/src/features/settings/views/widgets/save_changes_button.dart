import 'package:flutter/material.dart';

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
          child: const Text(
            "Save Changes",
          ),
        ),
      ),
    );
  }
}
