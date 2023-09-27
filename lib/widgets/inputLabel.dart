import 'package:flutter/material.dart';

class InputLabel extends StatelessWidget {
  final String label;
  const InputLabel({
    super.key,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 14.0, 
          fontWeight: FontWeight.w700
        ),
      ),
    );
  }
}
