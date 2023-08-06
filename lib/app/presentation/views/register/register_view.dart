import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {

  static const String name = 'register_view';

  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Register View'),
      ),
    );
  }
}
