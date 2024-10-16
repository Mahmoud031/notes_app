
import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

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
            color: const Color(0xffFFCC80), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Build your career with mahmoud rady',
                    style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 20),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,size: 30,
                    ))),
            const Text(
              'May 21 ,2024',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}