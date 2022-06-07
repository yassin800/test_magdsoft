import 'package:flutter/material.dart';

Widget Text_field({
  required String hinttext,
  required TextEditingController controll,
  Widget? suffix,
  Color border_color = const Color(0Xff707070),
}) =>
    TextFormField(
      controller: controll,
      decoration: InputDecoration(
          suffixIcon: suffix,
          hintText: hinttext,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: border_color,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: border_color))),
    );
