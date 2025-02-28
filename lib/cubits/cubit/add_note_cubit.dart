import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/widgets/Constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
    Color color=const Color(0xffFFAEBC);
  addNote(NoteModel note)async{
    note.color=color.value;
    emit(AddNoteLoading());

    try {
  var notesBox= Hive.box<NoteModel>(kNotesbox);
  
     await notesBox.add(note);
     emit(AddNoteSuccess());
}  catch (e) {
  emit(AddNoteFailure(errormsg: e.toString()));
}
  }
}
