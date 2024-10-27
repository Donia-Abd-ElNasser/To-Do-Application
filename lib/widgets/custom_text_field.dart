import 'package:flutter/material.dart';
import 'package:noteapp/widgets/Constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, required this.hint,  this.maxLines=1, this.onSaved, this.onChanged});
final String hint;
final int maxLines;
final void Function (String?)?onSaved;
final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        onChanged: onChanged,
        onSaved: onSaved,
        validator: (value){
          if(value?.isEmpty??true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
        maxLines: maxLines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder(kPrimaryColor),
          hintText: hint,
          hintStyle: const TextStyle(color: kPrimaryColor)
        )
      
      ),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: kPrimaryColor)
      );
  }
}