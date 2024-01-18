import 'package:easy_note/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NoteviewBody extends StatelessWidget {
  const NoteviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Padding(
        padding: EdgeInsets.only(top: 30.0),
        child: CustomAppBar(),
      ),
    ]);
  }
}
