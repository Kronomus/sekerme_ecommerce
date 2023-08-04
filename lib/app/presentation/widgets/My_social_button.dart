import 'package:flutter/material.dart';

class MySocialButton extends StatelessWidget {
  final Function()?onTap;
  final String imagePath;

  const MySocialButton({
    super.key,
    this.onTap,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
      ),
    );
  }
}
