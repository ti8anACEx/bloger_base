import 'package:bloger_base/consts/colors.dart';
import 'package:bloger_base/consts/consts.dart';
import 'package:flutter/material.dart';

class SmallPostCard extends StatelessWidget {
  const SmallPostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: const LinearGradient(
            colors: [Colors.deepPurple, Colors.black, Colors.blueGrey],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        height: 180,
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: greenColor),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "SOmething",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  fontFamily: regular),
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    SizedBox(
                      width: 3,
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: whiteColor,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Person",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          fontFamily: bold),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.person_add),
                    SizedBox(
                      width: 3,
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
