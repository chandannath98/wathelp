import 'package:flutter/material.dart';
import 'package:jobpilot/src/utilities/extensions/size_utilities.dart';
import 'package:jobpilot/src/utilities/form_validator_helper.dart';

class CustomTitledTextFormField extends StatelessWidget {
  const CustomTitledTextFormField({
    super.key,
    required this.title,
    this.hintText,
    this.focus,
    this.submit,
    this.validators,
    this.controller,
  });

  final String title;
  final String? hintText;
  final FocusNode? focus;
  final List<Validation>? validators;
  final ValueChanged<String>? submit;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(title),
        6.height,
        TextFormField(
          focusNode: focus,
          controller: controller,
          onFieldSubmitted: submit,
          decoration: InputDecoration(hintText: hintText ?? title),
          validator: FieldValidator.validate(name: title, validators ?? []),
        ),
      ],
    );
  }
}
