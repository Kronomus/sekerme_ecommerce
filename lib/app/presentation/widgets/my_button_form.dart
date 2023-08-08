import 'package:flutter/material.dart';

class MyButtonForm extends StatelessWidget {

  final String text;
  final Function()? onTab;



  const MyButtonForm({
    super.key,
    required this.text,
    this.onTab,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              blurRadius: 7,
              offset: const Offset(0,5),
            ),
          ],
        ),
        child: Text(text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),

      ),

    );
  }
}
