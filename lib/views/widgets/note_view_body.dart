import 'package:easy_note/views/widgets/custom_app_bar.dart';
import 'package:easy_note/views/widgets/custom_note_list_view.dart';
import 'package:flutter/material.dart';

class NoteviewBody extends StatelessWidget {
  const NoteviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(children: [
        SizedBox(
          height: 50,
        ),
        CustomAppBar(title: 'Notes', icon: Icons.search),
        Expanded(child: CustomNotesListView())
      ]),
    );
  }
}
