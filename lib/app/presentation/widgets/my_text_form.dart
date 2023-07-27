import 'package:flutter/material.dart';
// TextForm generalizado para reutilizar en cualquier formulario

class MyTextForm extends StatelessWidget {

  final String labelText;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;

  const MyTextForm({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.textInputType,
    required this.obscureText
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
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            blurRadius: 7,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: textInputType,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}