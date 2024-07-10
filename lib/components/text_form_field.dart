import 'package:flutter/material.dart';


class CustomTextFormField extends StatelessWidget {

  final String hintText;
  final TextInputType keyboardType;
  final String? labelText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;



 const CustomTextFormField({super.key, required this.hintText, required this.keyboardType, this.labelText, this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w500, fontSize: 16),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        hintText: hintText,
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w300),
        fillColor: Theme.of(context).colorScheme.secondary,
        filled: true,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide:
            BorderSide(color: Colors.red.shade200, width: 1)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
      ),
      keyboardAppearance: Brightness.light,
      keyboardType: keyboardType,
    );


  }
}
