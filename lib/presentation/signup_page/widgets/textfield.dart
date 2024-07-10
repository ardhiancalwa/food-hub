import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../../infrastructure/theme/colors.dart';

class TextfieldSignUp extends StatelessWidget {
  TextfieldSignUp({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    required this.isObsecure,
    required this.typeKeyboard,
  });

  String title;
  String hintText;
  bool isObsecure;
  TextInputType typeKeyboard;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xff9796A1),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: 'Sofia pro',
          ),
        ),
        SizedBox(
          height: 12,
        ),
        TextField(
          autocorrect: false,
          controller: controller,
          keyboardType: typeKeyboard,
          obscureText: isObsecure,
          cursorColor: blackColor,
          style: TextStyle(
            color: blackColor,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: 'Sofia pro',
          ),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: greyColor,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: primaryColor,
                width: 1,
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: blackColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'Sofia pro',
            ),
          ),
        )
      ],
    );
  }
}
