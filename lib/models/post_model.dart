// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String caption;
  final String uid;
  final String postId;
  final String username;
  final datePublished;
  final String postUrl;
  final List likes; // remove int when array is needed

  const Post(
      {required this.caption,
      required this.uid,
      required this.postId,
      required this.username,
      required this.datePublished,
      required this.postUrl,
      required this.likes});

  Map<String, dynamic> toJson() => {
        "caption": caption,
        "uid": uid,
        "username": username,
        "postId": postId,
        "datePublished": datePublished,
        "likes": likes,
        "postUrl": postUrl,
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      username: snapshot['username'],
      uid: snapshot['uid'],
      caption: snapshot['caption'],
      postId: snapshot['postId'],
      datePublished: snapshot['datePublished'],
      likes: snapshot['likes'],
      postUrl: snapshot['postUrl'],
    );
  }
}
