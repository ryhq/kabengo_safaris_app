import 'package:flutter/material.dart';
class ContactDetails extends StatelessWidget {
  final String platform;
  final String account;
  const ContactDetails({
    super.key,
    required this.platform,
    required this.account
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            platform,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w700
            ),
          ),
          Text(
            account,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.normal
            ),
          ),
        ],
      ),
    );
  }
}