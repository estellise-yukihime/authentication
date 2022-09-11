import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  const DefaultText({
    super.key,
    this.maxLength = 255,
    this.minLines = 1,
    this.maxLines = 1,
    required this.icon,
    this.iconColor = Colors.amberAccent,
    this.placeholder = '',
    this.shouldShowCounterText = false,
    this.shouldObscureText = false,
  });

  final int maxLength;
  final int minLines;
  final int maxLines;
  final IconData icon;
  final MaterialAccentColor iconColor;
  final String placeholder;
  final bool shouldShowCounterText;
  final bool shouldObscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      obscureText: shouldObscureText,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        hintText: placeholder,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(
          icon,
          color: iconColor,
          size: 25,
        ),
        prefixIconConstraints: const BoxConstraints(
          minWidth: 40,
          minHeight: 40,
        ),
        counterText: shouldShowCounterText ? null : '',
      ),
    );
  }
}
