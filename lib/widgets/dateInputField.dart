import 'package:flutter/material.dart';
import 'package:kabengo/constants/colors.dart';

class DateInputField extends StatefulWidget {
  final TextEditingController controller;
  final String? placeholder;
  final IconData prefixIcon;
  const DateInputField({
    super.key, 
    required this.controller,
    this.placeholder, 
    required this.prefixIcon, 
  });

  @override
  State<DateInputField> createState() => _DateInputFieldState();
}

class _DateInputFieldState extends State<DateInputField> {
  DateTime? _selectedDate;
  Future<void> _selectDate(BuildContext context) async{
    final DateTime picked = (await showDatePicker(
      context: context, 
      initialDate: _selectedDate ?? DateTime.now(), 
      firstDate: DateTime(2023), 
      lastDate: DateTime(2040),
      builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: foregroundThemeColor,
                onPrimary: backgroundThemeColor,
                onSecondary: backgroundThemeColor
              ),
              dialogBackgroundColor: backgroundThemeColor,
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  backgroundColor: foregroundThemeColor,
                  foregroundColor: backgroundThemeColor
                ),
              ),
            ), 
            child: child!
          );
        },
      )
   ) ?? DateTime.now();

    if (picked.toString().isNotEmpty && picked != _selectedDate){
      setState(() {
        _selectedDate = picked;
        widget.controller.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onTap: () => _selectDate(context),
        controller: widget.controller,
        readOnly: true,
        cursorColor: foregroundThemeColor,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: foregroundThemeColor),
            borderRadius: BorderRadius.circular(21)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: foregroundThemeColor),
            borderRadius: BorderRadius.circular(21),
          ),
          hintText: widget.placeholder,
          contentPadding: const EdgeInsets.only(left: 600.0),
          border: const OutlineInputBorder(),
          prefixIcon: Container(
            margin: const EdgeInsets.only(right: 14),
            height: 54,
            width: 60,
            decoration: BoxDecoration(
              color: foregroundThemeColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(21),
                topLeft: Radius.circular(21)),
            ),
            child: Icon(
              widget.prefixIcon,
              color: backgroundThemeColor,
            ),
          )
        ),
      ),
    );
  }
}
