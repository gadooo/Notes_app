import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModeel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final DateTime dateTime;
  @HiveField(3)
  final int color;

  NoteModeel(
      {required this.title,
      required this.subTitle,
      required this.dateTime,
      required this.color});
}
