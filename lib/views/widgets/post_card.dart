import 'package:bloger_base/consts/consts.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: const LinearGradient(
            colors: [Colors.deepPurple, Colors.black, Colors.blueGrey],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        width: double.infinity,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: whiteColor),
                width: double.infinity,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10).copyWith(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "How ChatGPT is ... jsgcjh..kfskvisoivhhrie ioh uiheu iriu iu ib eibr ibi bieb ijbeji bejib jieb jibeji rbi ij bijeb sijijbbjesktijbb i."
                      .text
                      .maxLines(2)
                      .fontFamily(bold)
                      .make()
                      .box
                      .make(),
                  3.heightBox,
                  "20 Mar 2023".text.fontFamily(regular).make(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: purpleColor,
                          ),
                          "  Marksman Rifle".text.fontFamily(bold).make(),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        child: Icon(Icons.person_add_alt_1_rounded),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
