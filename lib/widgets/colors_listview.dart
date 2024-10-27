import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/add_note_cubit.dart';

import 'Constants.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({super.key, required this.isActive, required this.color});
final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ?  CircleAvatar(
      radius: 30,
        backgroundColor: const Color.fromARGB(255, 165, 12, 12),
      child: CircleAvatar(
        radius: 26,
          backgroundColor: color,
      ),
    )
    : CircleAvatar(
      radius: 30,
        backgroundColor: color,
    );
  }
}
class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex=0;
  
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
                BlocProvider.of<AddNoteCubit>(context).color=KColors[index];
                
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