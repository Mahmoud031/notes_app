import 'package:hive/hive.dart';

//generate TypeAdabter
part 'note_model.g.dart'; //the name must be the same of the file name
@HiveType(typeId: 0) //unique of the same class
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(3)
  final String date;
  @HiveField(4)
  final int color;

  NoteModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});
}
