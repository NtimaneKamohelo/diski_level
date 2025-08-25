//primary buttons
import 'package:flutter/material.dart';

class PrimaryButtons {
  
  final VoidCallback onPressed;
  final String btnText;

  PrimaryButtons({
    required this.onPressed,
    required this.btnText,
  });

  //Welcome page Register button
  Container mainButton() {
    return Container(
      margin: EdgeInsets.all(40),
      child: ElevatedButton(
        onPressed: onPressed, 
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 70),
          backgroundColor: Color(0xFF004030),
          minimumSize: Size(double.infinity, 50),
          elevation: 8, //set the elevation for the shadow
          shadowColor: Colors.grey[800],

        ),
        child: Text(
          btnText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        )),
    );
  }

  //Social Media Login
  Container mediaButton(Widget icon){
    return Container(
      margin: const EdgeInsets.only(top: 15, left: 40, right: 40),
      child: ElevatedButton.icon(
        onPressed: onPressed, 
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          backgroundColor: Colors.grey[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        label: Text(
          btnText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ))
    );
  }

}