import 'package:bloger_base/consts/colors.dart';
import 'package:bloger_base/consts/lists.dart';
import 'package:bloger_base/views/widgets/common_widgets/our_button.dart';
import 'package:bloger_base/views/widgets/post_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(color: whiteColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(color: greenColor),
                      ),
                      labelStyle: const TextStyle(color: Colors.white),
                      labelText: "Search",
                    ),
                    onFieldSubmitted: (String subM) {
                      setState(() {});
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.chat_bubble_rounded,
                      color: purpleColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.notifications,
                      color: greenColor,
                    )
                  ],
                )
              ],
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 30,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(topicsList.length, (index) {
                      return Row(
                        children: [
                          ourButton(title: topicsList[index]),
                          const SizedBox(
                            width: 8,
                          )
                        ],
                      );
                    }),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const PostCard();
                  },
                ),
              ),
            ],
          )),
    );
  }
}
