import 'package:flutter/material.dart';
import 'package:noteapp/models/note_model.dart';
import '../widgets/edit_note_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: EditNoteViewBody(note: note,),
    );
  }
}

