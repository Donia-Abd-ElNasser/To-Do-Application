import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/Edit_Notes_view.dart';

class NotesWidget extends StatelessWidget {
   const NotesWidget({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return  EditNotesView(note: note,);
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top:18,bottom: 18,left:16,),
      //  width: 150,height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color:Color(note.color)
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(note.title,style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
      
            ),
            
            subtitle: Padding(
              padding: const EdgeInsets.only(top:16),
              child: Text(note.subTitle,style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.4),
                ),),
            ),
              trailing: IconButton(
                onPressed: (){note.delete();
                print('deleeeeete');
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              
                },
                
              icon: const Icon(Icons.delete,color: Colors.black,size: 35,),),
            ),
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Text(note.date,style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.4),
                ),),
              ),
          ],
        )
      ),
    );
  }
}