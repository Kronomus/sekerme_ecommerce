import 'package:flutter/material.dart';

class MyCheckBox extends StatelessWidget {

  final Function(bool?)? onChanged;
  final bool value;

  const MyCheckBox({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        const Text('I agree to the '),
        InkWell(
          child: Text('Terms',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          onTap: () {}
        ),
        const Text(' and'),
        InkWell(
            child: Text(' Conditions',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            onTap: () {}
        ),
      ],
    );
  }
}
