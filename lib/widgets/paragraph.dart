import 'package:flutter/material.dart';
class Paragraph extends StatelessWidget {
  final String paragraph;
  const Paragraph({
    required this.paragraph,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        paragraph,
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.normal
        ),
      ),
    );
  }
}