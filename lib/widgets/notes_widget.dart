import 'package:flutter/material.dart';

class NotesWidget extends StatelessWidget {
  const NotesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:18,bottom: 18,left:16,),
    //  width: 150,height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:const Color.fromARGB(255, 177, 228, 179)
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text('Flutter Course',style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),

          ),
          
          subtitle: Padding(
            padding: const EdgeInsets.only(top:16),
            child: Text('Complete Flutter Course using firebase and Api ',style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.4),
              ),),
          ),
            trailing: IconButton(
              onPressed: (){},
            icon: Icon(Icons.delete,color: Colors.black,size: 35,),),
          ),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Text('Oct,24,2024',style: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(0.4),
              ),),
            ),
        ],
      )
    );
  }
}