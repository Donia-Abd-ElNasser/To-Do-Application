import 'package:flutter/material.dart';
import 'package:noteapp/widgets/notes_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context,index){
        
        return const Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: NotesWidget(),
        );
      }),
    );
  }
}