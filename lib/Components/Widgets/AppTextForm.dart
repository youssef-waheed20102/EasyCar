import 'package:flutter/material.dart';

Widget textForm(controller,textFormText){
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      return  Container(
        height:  MediaQuery.of(context).size.height * 0.06,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextFormField(
            textDirection: TextDirection.rtl ,
            controller:  controller,
            decoration: InputDecoration(
              hintText: textFormText,
              hintStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),// Your hint text in RTL
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // Adjust radius as needed
              ),
            ),

          ),
        ),
      );
    }

  );



}