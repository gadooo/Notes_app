import 'package:easy_note/views/widgets/add_note_buttom_sheet.dart';
import 'package:easy_note/views/widgets/note_view_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteButtmSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NoteviewBody(),
    );
  }
}
