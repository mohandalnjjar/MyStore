import 'package:flutter/material.dart';

class PasswordTextFromField extends StatefulWidget {
  const PasswordTextFromField({
    super.key,
    required this.hint,
    required this.prefixIcon,
    this.keyBordType,
    this.onSaved,
    this.validator,
  });

  final String hint;
  final Widget prefixIcon;

  final TextInputType? keyBordType;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;

  @override
  State<PasswordTextFromField> createState() => _PasswordTextFromFieldState();
}

class _PasswordTextFromFieldState extends State<PasswordTextFromField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: widget.keyBordType,
      onSaved: widget.onSaved,
      validator: widget.validator,
      decoration: InputDecoration(
        filled: true,
        prefixIcon: widget.prefixIcon,
        suffixIcon: IconButton(
          icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
        ),
        hintText: widget.hint,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            style: BorderStyle.none,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
