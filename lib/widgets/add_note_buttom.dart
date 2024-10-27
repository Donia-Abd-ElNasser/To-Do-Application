import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:noteapp/cubits/cubit/add_note_cubit.dart';

import 'package:noteapp/widgets/add_note_form.dart';

import '../cubits/cubit/notes_cubit.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('Failed');
          }
          if (state is AddNoteSuccess) {
             BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
            print('tmaaam');
          }
        },
        builder: (context,state){
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
        child: Padding(
          padding: EdgeInsets.only(left:16,right: 16,top: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
          
          child: const SingleChildScrollView(child: AddNoteFormState()),
        ),);}
      ),
    );
  }
}
