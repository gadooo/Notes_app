import 'package:easy_note/constans.dart';
import 'package:flutter/material.dart';

class CustomTextFilde extends StatelessWidget {
  const CustomTextFilde({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 0, top: 32),
      child: TextField(
        maxLines: maxLines,
        cursorColor: kprimaryColor,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.white, fontSize: 18),
            border: customBorder(),
            focusedBorder: customBorder(kprimaryColor)),
      ),
    );
  }

  OutlineInputBorder customBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
