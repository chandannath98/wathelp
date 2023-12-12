import 'package:flutter/material.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class SettingDropdownField<T> extends StatelessWidget {
  const SettingDropdownField({
    super.key,
    this.value,
    this.hintText,
    this.onChange,
    required this.title,
    required this.fieldList,
  });

  final T? value;
  final String title;
  final String? hintText;
  final ValueChanged<T?>? onChange;
  final List<({T value, String title})> fieldList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(title),
        6.height,
        DropdownButtonFormField<T>(
          value: value,
          items: fieldList
              .map(
                (field) => DropdownMenuItem(
                  value: field.value,
                  child: Text(field.title),
                ),
              )
              .toList(),
          onChanged: onChange,
          decoration: InputDecoration(
            hintText: hintText ?? "Choose...",
          ),
        )
      ],
    );
  }
}
