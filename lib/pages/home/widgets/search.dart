import 'package:flutter/material.dart';


class SearchSection extends StatelessWidget {


const SearchSection ({super.key}) ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Container(
    //height: 20,
    //color: Colors.yellow,
    padding: const EdgeInsets.symmetric(horizontal: 24,vertical:30 ),

    child: Stack(
      children: [TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            )
          )
        ),
      ),

      Positioned(
        right: 12,
        bottom: 10,
        child: Container(height:50 ,width:50,color: Colors.black, ))
      ],
    ),
  );

  
  }

}