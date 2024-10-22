import 'package:flutter/material.dart';

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
          ],
        ),
      )
    );
  }
}

