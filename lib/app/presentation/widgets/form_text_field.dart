import 'package:flutter/material.dart';

class MyFormTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final bool suffixIcon;
  final TextEditingController controller;

  const MyFormTextField({super.key,
    required this.labelText,
    required this.hintText,
    required this.textInputType,
    required this.obscureText,
    required this.suffixIcon,
    required this.controller

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
           color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
            blurRadius: 7,
            offset: const Offset(0,5),
    )
    ],
    ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: textInputType,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      )







    );
  }
}
