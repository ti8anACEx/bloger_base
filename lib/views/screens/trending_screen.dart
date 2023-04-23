import 'package:bloger_base/consts/consts.dart';
import 'package:bloger_base/consts/lists.dart';
import 'package:bloger_base/views/widgets/common_widgets/our_button.dart';
import 'package:bloger_base/views/widgets/common_widgets/small_post_card.dart';
import 'package:bloger_base/views/widgets/post_card.dart';

class TrendingScreen extends StatefulWidget {
  const TrendingScreen({super.key});

  @override
  State<TrendingScreen> createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              10.heightBox,
              "Today's Trending".text.fontFamily(bold).make(),
              20.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) {
                    return const SmallPostCard();
                  }),
                ),
              ),
              20.heightBox,
              ourButton(title: topicsList[1]),
              10.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) {
                    return const SmallPostCard();
                  }),
                ),
              ),
              20.heightBox,
              ourButton(title: topicsList[2]),
              10.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) {
                    return const SmallPostCard();
                  }),
                ),
              ),
              20.heightBox,
              ourButton(title: topicsList[3]),
              10.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) {
                    return const SmallPostCard();
                  }),
                ),
              ),
            ],
          ),
        ));
  }
}
