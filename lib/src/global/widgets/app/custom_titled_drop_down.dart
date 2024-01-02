import 'package:flutter/material.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';

class CustomTitledDropdownField<T> extends StatelessWidget {
  const CustomTitledDropdownField({
    super.key,
    this.value,
    this.hintText,
    this.onChange,
    this.validator,
    this.fieldList,
    this.showTitle = true,
    required this.title,
  });

  final T? value;
  final bool showTitle;
  final String title;
  final String? hintText;
  final ValueChanged<T?>? onChange;
  final FormFieldValidator<T>? validator;
  final List<({T value, String title})>? fieldList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (showTitle) ...[
          Text(title),
          6.height,
        ],
        DropdownButtonFormField<T>(
          value: value,
          items: fieldList
              ?.map(
                (field) => DropdownMenuItem(
                  value: field.value,
                  child: Text(field.title),
                ),
              )
              .toList(),
          onChanged: onChange,
          validator: validator,
          hint: Text(
            hintText ?? "Choose...",
          ),
        )
      ],
    );
  }
}
