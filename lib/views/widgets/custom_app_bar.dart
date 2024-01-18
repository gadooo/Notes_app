import 'package:easy_note/views/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Note",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        CustomSearchIcon()
      ],
    );
  }
}
