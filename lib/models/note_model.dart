import 'package:hive/hive.dart';

//generate TypeAdabter
part 'note_model.g.dart'; //the name must be the same of the file name
@HiveType(typeId: 0) //unique of the same class
class NoteModel extends HiveObject {
  @HiveField(0)
   String title;
  @HiveField(1)
   String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
   int color;

  NoteModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});
}
