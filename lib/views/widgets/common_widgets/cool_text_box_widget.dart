import 'package:flutter/material.dart';

class CoolTxtSpan extends StatelessWidget {
  final String boldField;
  final String field;
  final double bFfontSize;
  final double fFontSize;
  final Color border;
  final Color fill;
  final bool isCenter;

  const CoolTxtSpan(
      {super.key,
      this.boldField = "",
      this.field = "",
      this.bFfontSize = 15,
      this.fFontSize = 15,
      this.border = Colors.white,
      this.fill = Colors.transparent,
      this.isCenter = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: border),
          borderRadius: BorderRadius.circular(30),
          color: fill),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 7)
            .copyWith(bottom: 2, top: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              boldField,
              style:
                  TextStyle(fontSize: bFfontSize, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              field,
              style:
                  TextStyle(fontSize: fFontSize, fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
