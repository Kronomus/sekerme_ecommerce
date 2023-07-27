import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(child: Divider(
          thickness: 1.5,
          color: Theme.of(context).colorScheme.primary,
        )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Or sing in with',
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
        Expanded(child: Divider(
          thickness: 1.5,
          color: Theme.of(context).colorScheme.primary,
        )),
      ],
    );
  }
}
