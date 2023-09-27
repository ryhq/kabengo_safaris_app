import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kabengo/constants/colors.dart';
import 'package:kabengo/widgets/button.dart';
import 'package:kabengo/widgets/dateInputField.dart';
import 'package:kabengo/widgets/headingOne.dart';
import 'package:kabengo/widgets/inputLabel.dart';
import 'package:kabengo/widgets/textInputFeild.dart';

class CreateReservation extends StatelessWidget {
  const CreateReservation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: foregroundThemeColor,
          ),
          backgroundColor: backgroundThemeColor,
          elevation: 3,
          title: HeadingOne(headingOne: "Kabengo Safaris"),
          centerTitle: true,
        ),
        backgroundColor: backgroundThemeColor,
        body: ListView(
          children: [
            HeadingOne(headingOne: "Custom Reservation"),
            InputLabel(label: "Full Name"),
            TextInputField(prefixIcon: Icons.person, placeholder: 'Surname, First name Last name',),
            InputLabel(label: "Email"),
            TextInputField(prefixIcon: Icons.mail, placeholder: 'example@domain.com', keyboardType: TextInputType.emailAddress,),
            InputLabel(label: "Phone"),
            TextInputField(prefixIcon: Icons.phone, placeholder: '+34 x xx xx xx xx', keyboardType: TextInputType.phone,),
            InputLabel(label: "Family/Group Name"),
            TextInputField(prefixIcon: Icons.person_3, placeholder: 'Maybe Sur Name or Any name',),
            InputLabel(label: "Nationality"),
            TextInputField(prefixIcon: Icons.home, placeholder: 'France/Italy/Tanzania'),
            InputLabel(label: "Arrival Date"),
            DateInputField(controller: TextEditingController(), prefixIcon: Icons.calendar_month),
            InputLabel(label: "Safari Days"),
            TextInputField(prefixIcon: Icons.sunny, placeholder: '(4/5/6/7/8/9) days',),
            InputLabel(label: "Total Visitor(s)"),
            TextInputField(prefixIcon: CupertinoIcons.person_3_fill, keyboardType: TextInputType.numberWithOptions(decimal: false),),
            InputLabel(label: "Further Clarifications"),
            TextInputField(prefixIcon: Icons.more_horiz),
            Button(buttonLabel: "Submit", toward: Container(),)
          ],
        ),
      )
    );
  }
}