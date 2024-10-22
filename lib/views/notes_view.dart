import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Constants.dart';
import 'package:noteapp/widgets/add_note_buttom.dart';
import 'package:noteapp/widgets/notes_list_view.dart';


import '../widgets/custom_appBar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor:kPrimaryColor ,
        onPressed: ()
      {
        showModalBottomSheet(shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
        ),
         
          context: context, builder: (context){
          return AddNoteButtomSheet();
        },);
      },
      child: const Icon(Icons.add),),
      body:const Padding(
        padding:  EdgeInsets.only(top:40,left: 16,right: 16),
        child: Column(
          children: [
            CustomAppBar(text: 'Notes',icon: Icons.search,),
            SizedBox(height: 20,),
           Expanded(child: NotesListView())
          ],
        ),
      )
    );
  }
}

