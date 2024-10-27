import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/simple_bloc_observer.dart';
import 'package:noteapp/views/notes_view.dart';
import 'package:noteapp/widgets/Constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/cubit/notes_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNotesbox);

  Bloc.observer = SimpleBlocObserver();

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
    create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const NotesView(),
      ),
    );
  }
}
