import 'package:bloger_base/consts/consts.dart';

Widget customTextField(
    {String? title,
    String? hint,
    TextEditingController? controller,
    bool? isPass = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(purpleColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        obscureText: isPass!,
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(fontFamily: semibold, color: fontGrey),
          isDense: true,
          fillColor: blackColor,
          filled: true,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: textfieldGrey),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: purpleColor),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      10.heightBox
    ],
  );
}


// import 'package:flutter/material.dart';
// import '../globals_and_extras/globalVars.dart';

// class MyTextField extends StatefulWidget {
//   final controller;
//   final String hintText;
//   final bool isObscure;
//   const MyTextField(
//       {super.key,
//       this.controller,
//       required this.hintText,
//       required this.isObscure});

//   @override
//   State<MyTextField> createState() => _MyTextFieldState();
// }

// class _MyTextFieldState extends State<MyTextField> {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     return Container(
//       width: size.width <= webWidth ? size.width : 600,
//       height: 80,
//       padding: size.width <= webWidth
//           ? const EdgeInsets.symmetric(horizontal: 15)
//           : const EdgeInsets.symmetric(vertical: 0),
//       child: TextField(
//         controller: widget.controller,
//         obscureText: widget.isObscure,
//         decoration: InputDecoration(

//             enabledBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color: Colors.white),
//               borderRadius: BorderRadius.circular(30),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color: purpleThemeColor),
//               borderRadius: BorderRadius.circular(30),
//             ),

//             filled: true,
//             hintText: widget.hintText),
//       ),
//     );
//   }
// }
