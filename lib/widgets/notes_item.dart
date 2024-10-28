
import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 24, top: 24 , bottom: 24,right: 12),
        decoration: BoxDecoration(
            color:  Color(note.color), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
                title:  Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    note.subtitle,
                    style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 20),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      note.delete();
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,size: 30,
                    ))),
             Text(
              note.date,
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}