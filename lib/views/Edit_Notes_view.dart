import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_appBar.dart';
import 'package:noteapp/widgets/custom_text_field.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top:40,left: 16,right: 16),
        child: Column(
          children: [
            CustomAppBar(text: 'Edit Notes',icon: Icons.done,),
             SizedBox(height: 20,),
            CustomTextField(hint: 'Title'),
            CustomTextField(hint: 'Notes',maxLines: 10,)
          ],
        ),
      ),
    );
  }
}