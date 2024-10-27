import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';

import '../cubits/cubit/add_note_cubit.dart';
import 'Constants.dart';
import 'colors_listview.dart';
import 'custom_appBar.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();

                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              text: 'Edit Notes',
              icon: Icons.done,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
                onChanged: (value) {
                  title = value;
                },
                hint: widget.note.title),
            CustomTextField(
              onChanged: (value) {
                content = value;
              },
              hint: widget.note.subTitle,
              maxLines: 10,
            ),
             EditColorNotesList(note: widget.note,),
          ],
        ),
      ),
    );
  }
}
class EditColorNotesList extends StatefulWidget {
  const EditColorNotesList({super.key, required this.note});
final NoteModel note;
  @override
  State<EditColorNotesList> createState() => _EditColorNotesListState();
}

class _EditColorNotesListState extends State<EditColorNotesList> {
 late int currentIndex;
 @override
 void initState(){
currentIndex=KColors.indexOf(Color(widget.note.color));
super.initState();
 }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30*2,
      child: ListView.builder(
        itemCount: KColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(4),
            child: GestureDetector(
              onTap: (){
                currentIndex==index;
              widget.note.color==KColors[index].value;
                
                setState(() {
                  
                });

              },
              
              
              child: ColorWidget(color: KColors[index],
                isActive:currentIndex== index,)),
          );
        },),
    );
  }
}