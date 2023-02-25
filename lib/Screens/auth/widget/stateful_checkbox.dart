import 'package:flutter/material.dart';

bool isChecked = false;

class statefulCheckbox extends StatefulWidget {
  const statefulCheckbox({super.key});

  @override
  State<statefulCheckbox> createState() => _statefulCheckboxState();
}

class _statefulCheckboxState extends State<statefulCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: changeCheckboxState,
    );
  }

  void changeCheckboxState(bool? value) {
    isChecked = value!;
    setState(() {});
  }
}
