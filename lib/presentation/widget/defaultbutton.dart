import 'package:flutter/material.dart';

Widget defaultbutton({
  required String text,
  required VoidCallback function,
  Color background = const Color(0xff005DA3),
  Color color_text = const Color(0XffFFFFFF),
}) =>
    SizedBox(
      child: MaterialButton(
        height: 50,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.white)),
        onPressed: function,
        child: Text(text),
        color: background,
        textColor: color_text,
      ),
    );
