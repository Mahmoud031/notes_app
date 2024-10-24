import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() async {
  await Hive.initFlutter(); // initialize hive flutter
  await Hive.openBox(kNotesBox); //  box to store
  Hive.registerAdapter(
      NoteModelAdapter()); // register to treate or store note model(in type adapter)
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(  // provide it to all screens in my app
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
          home: const NotesView()),
    );
  }
}
