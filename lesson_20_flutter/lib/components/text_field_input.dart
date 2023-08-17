import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final bool isPassword;
  const TextInputField(
      {super.key,
      required this.hintText,
      required this.textEditingController,
      required this.textInputType,
      required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.textEditingController,
      decoration: InputDecoration(
        hintText: this.hintText,
        border: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(8),
      ),
      keyboardType: this.textInputType,
      obscureText: this.isPassword,
    );
  }
}
