import 'package:flutter/material.dart';

class MySocialButton extends StatelessWidget {

  final Function()? onTap;
  final String imagePath;

  const MySocialButton({
    super.key,
    required this.imagePath,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey[200],
            ),
            child: Image.asset(
              imagePath,
              height: 40,
            ),
          ),
        ),
      ),
    );
  }
}
