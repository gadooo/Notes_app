import 'package:easy_note/views/widgets/customButtom.dart';
import 'package:easy_note/views/widgets/custom_text_filde.dart';
import 'package:flutter/material.dart';

class AddNoteButtmSheet extends StatelessWidget {
  const AddNoteButtmSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddNoteFormField();
  }
}

class AddNoteFormField extends StatefulWidget {
  const AddNoteFormField({
    super.key,
  });

  @override
  State<AddNoteFormField> createState() => _AddNoteFormFieldState();
}

class _AddNoteFormFieldState extends State<AddNoteFormField> {
  final GlobalKey<FormState> form = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: form,
      child: Column(
        children: [
          CustomTextFilde(
            onsaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          CustomTextFilde(
            onsaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 39),
            child: CustomButtom(
              ontap: () {
                if (form.currentState!.validate()) {
                  form.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }
}
