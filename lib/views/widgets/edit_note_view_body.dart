import 'package:easy_note/views/widgets/custom_app_bar.dart';
import 'package:easy_note/views/widgets/custom_text_filde.dart';
import 'package:flutter/material.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(icon: Icons.check, title: 'Edit Note'),
          SizedBox(
            height: 50,
          ),
          CustomTextFilde(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextFilde(
            hint: 'contents',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}