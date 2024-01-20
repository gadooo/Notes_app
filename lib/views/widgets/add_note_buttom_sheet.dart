import 'package:easy_note/views/widgets/custom_text_filde.dart';
import 'package:flutter/material.dart';

class AddNoteButtmSheet extends StatelessWidget {
  const AddNoteButtmSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextFilde(
          hint: 'title',
        ),
        CustomTextFilde(
          hint: 'content',
          maxLines: 5,
        )
      ],
    );
  }
}
