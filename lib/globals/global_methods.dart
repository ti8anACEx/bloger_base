import 'package:bloger_base/consts/colors.dart';
import 'package:flutter/material.dart';

nextScreen(Widget page, BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

nextScreenReplace(Widget page, BuildContext context) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

showSnackBar(String text, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: greenColor,
      content: Text(
        text,
        style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal),
      )));
}
