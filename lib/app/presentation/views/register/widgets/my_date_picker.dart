import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDatePicker extends StatelessWidget {

  // final String labelText;
  // final String hintText;
  // final TextInputType textInputType;
  final TextEditingController controller;

  const MyDatePicker({
    super.key,
    required this.controller,
    // required this.labelText,
    // required this.hintText,
    // required this.textInputType
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
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Date of Birth',
          hintText: 'Date of Birth',
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        readOnly: true,
        onTap: () => _selectDate(context),
        controller: controller,

      ),
    );
  }
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      controller.text =  DateFormat.yMMMd().format(picked);
    }

  }
}
