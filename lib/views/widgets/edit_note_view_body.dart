import 'package:easy_note/views/widgets/custom_app_bar.dart';
import 'package:easy_note/views/widgets/custom_text_filde.dart';
import 'package:flutter/material.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const CustomAppBar(icon: Icons.check, title: 'Edit Note'),
          const SizedBox(
            height: 50,
          ),
          CustomTextFilde(
            hint: 'Title',
            onsaved: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFilde(
            onsaved: (value) {},
            hint: 'contents',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
