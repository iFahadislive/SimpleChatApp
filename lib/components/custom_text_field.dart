import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {


 final TextEditingController controller;
  final String hintText;
  final IconData? suffIcon;

  final bool obsecure;
 final TextInputType? keyboard;

  const CustomTextField({super.key,
   required this.hintText,
    required this.controller,
   required this.obsecure,
    this.suffIcon,
    this.keyboard
});




  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.shade400),
        fillColor: Theme.of(context).colorScheme.tertiary,
        filled: true,
        border: InputBorder.none,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:  BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:  BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
            ),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:  BorderSide(
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 0.5
          ),
        ),

        suffixIcon: Icon(suffIcon),
        suffixIconColor: Colors.grey.shade400,

      ),

      keyboardType: keyboard,
      obscureText: obsecure,
    );
  }
}
