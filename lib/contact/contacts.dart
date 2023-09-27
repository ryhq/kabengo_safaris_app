import 'package:flutter/material.dart';
import 'package:kabengo/constants/text.dart';
import 'package:kabengo/contact/widgets/contactDetails.dart';
import 'package:kabengo/contact/widgets/officeAddress.dart';
import 'package:kabengo/widgets/button.dart';
import 'package:kabengo/widgets/headingOne.dart';
import 'package:kabengo/widgets/headingTwo.dart';
import 'package:kabengo/widgets/inputLabel.dart';
import 'package:kabengo/widgets/paragraph.dart';
import 'package:kabengo/widgets/textInputFeild.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        HeadingOne(headingOne: contactHeading1),
        Paragraph(paragraph: contactParagraph1),
        HeadingTwo(headingTwo: contactHeading2),
        ContactDetails(platform: "WhatsApp", account: "+255 786 345 408"),
        ContactDetails(platform: "Email", account: "info@kabengosafaris.com"),
        ContactDetails(platform: "Phone", account: "+255 786 345 408"),
        ContactDetails(platform: "Phone", account: "+255 624 110 836"),
        HeadingTwo(headingTwo: contactHeading3),
        OfficeAddress(),
        HeadingTwo(headingTwo: contactHeading4),
        Paragraph(paragraph: contactParagraph2),
        InputLabel(label: "Name"),
        TextInputField(prefixIcon: Icons.person),
        InputLabel(label: "Email"),
        TextInputField(prefixIcon: Icons.mail, keyboardType: TextInputType.emailAddress),
        InputLabel(label: "Phone"),
        TextInputField(prefixIcon: Icons.phone, keyboardType: TextInputType.phone),
        InputLabel(label: "Message"),
        TextInputField(prefixIcon: Icons.chat),
        Button(buttonLabel: "Send", toward: Container())
      ],
    );
  }
}
