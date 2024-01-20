import 'package:easy_note/constans.dart';
import 'package:flutter/material.dart';

class CustomTextFilde extends StatelessWidget {
  const CustomTextFilde({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: TextField(
        cursorColor: kprimaryColor,
        decoration: InputDecoration(
            hintText: 'title',
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
