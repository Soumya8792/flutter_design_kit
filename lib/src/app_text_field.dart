import 'package:flutter/material.dart';

/// A text field that uses the application's [InputDecorationTheme].
class AppTextField extends StatelessWidget {
  /// Creates a text field using the active theme's input decoration styles.
  const AppTextField({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.validator,
    this.enabled = true,
    this.maxLines = 1,
  });

  /// Controller for reading and changing the field's value.
  final TextEditingController? controller;

  /// Label displayed by the input decoration.
  ///
  /// These strings provide the corresponding [InputDecoration] text.
  final String? label, hint, helperText, errorText;

  /// Icons displayed before or after the input text.
  final Widget? prefixIcon, suffixIcon;

  /// Whether to conceal the input and whether the field accepts input.
  final bool obscureText, enabled;

  /// The keyboard type and action requested for this field.
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  /// Called whenever the user changes the field value.
  final ValueChanged<String>? onChanged;

  /// Validates the current value when used inside a [Form].
  final FormFieldValidator<String>? validator;

  /// Maximum number of lines, unless [obscureText] forces a single line.
  final int? maxLines;

  @override
  Widget build(BuildContext context) => TextFormField(
    controller: controller,
    obscureText: obscureText,
    enabled: enabled,
    keyboardType: keyboardType,
    textInputAction: textInputAction,
    onChanged: onChanged,
    validator: validator,
    maxLines: obscureText ? 1 : maxLines,
    decoration: InputDecoration(
      labelText: label,
      hintText: hint,
      helperText: helperText,
      errorText: errorText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    ),
  );
}
