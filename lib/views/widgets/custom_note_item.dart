import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Colors.amber[100], borderRadius: BorderRadius.circular(16)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text(
            "Flutter Tips",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Text(
              "Build youer carerr with easy ",
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18),
            ),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 40,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Text('may 21,2024',
              style: TextStyle(color: Colors.black.withOpacity(0.5))),
        )
      ]),
    );
  }
}
