import 'package:flutter/material.dart';
import 'package:noteapp/widgets/notes_list_view.dart';
import 'package:noteapp/widgets/notes_widget.dart';

import '../widgets/custom_appBar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Padding(
        padding:  EdgeInsets.only(top:40,left: 16,right: 16),
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: 20,),
           Expanded(child: NotesListView())
          ],
        ),
      )
    );
  }
}

