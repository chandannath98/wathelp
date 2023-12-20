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
    this.initialValue,
    this.onChange,
    this.prefixIcon,
    this.suffixIcon,
    this.inputType,
  });

  final String title;
  final String? hintText;
  final String? initialValue;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? inputType;
  final FocusNode? focus;
  final List<Validation>? validators;
  final ValueChanged<String>? submit;
  final ValueChanged<String>? onChange;
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
          onChanged: onChange,
          controller: controller,
          onFieldSubmitted: submit,
          keyboardType: inputType,
          initialValue: initialValue,
          decoration: InputDecoration(
            hintText: hintText ?? title,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
          validator: FieldValidator.validate(name: title, validators ?? []),
        ),
      ],
    );
  }
}
