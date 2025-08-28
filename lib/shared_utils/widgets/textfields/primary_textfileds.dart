import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class primaryTextfields{

  Widget prefixIcon;
  Widget suffixIcon;
  final String hintText;

  final TextEditingController textEditingController;
  final bool isPass;

  primaryTextfields({
    required this.prefixIcon,
    required this.suffixIcon,
    required this.hintText,
    required this.textEditingController,
    this.isPass = false,
  });

  //Username: email
  Container usernametextField() {
    return  Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 60
          )
        ],
      ),
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      child: TextField(
        obscureText: isPass,
        controller: textEditingController,
        decoration: InputDecoration(
          fillColor: Colors.blue,
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[400],
            fontSize: 14,
          )
        ),
      ),

      //Password textbox
    );
  }

  //Username: email
  Container passwordTextField() {
    return  Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              blurRadius: 60
          )
        ],
      ),
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      child: TextField(
        obscureText: isPass,
        controller: textEditingController,
        decoration: InputDecoration(
            fillColor: Colors.blue,
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),

            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[400],
              fontSize: 14,
            )
        ),
      ),

      //Password textbox
    );
  }

}