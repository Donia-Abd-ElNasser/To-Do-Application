import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({super.key, required this.isActive, required this.color});
final bool isActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ?  CircleAvatar(
      radius: 30,
        backgroundColor: Colors.black,
      child: CircleAvatar(
        radius: 26,
          backgroundColor: color,
      ),
    ): CircleAvatar(
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
  List<Color>Colors=const [
   Color(0xffFFAEBC),
  Color(0xff3d5b59),
  Color(0xffb5e5cf),
  Color(0xfffcb5ac),
  Color(0xffb99095),
  Color(0xffA0E7E5),
  Color(0xffB4F8C8),
  Color(0xffFBE7C6),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30*2,
      child: ListView.builder(
        itemCount: Colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(4),
            child: GestureDetector(
              onTap: (){
                currentIndex==index;
              setState(){

              };
              },
              
              
              child: ColorWidget(color: Colors[index],
                isActive:currentIndex== index,)),
          );
        },),
    );
  }
}