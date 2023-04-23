import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

import '../models/post_model.dart';

class StorageMethods {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //adding image to firebase storage
  Future<String> uploadImageToStorage(
      String childName, Uint8List file, String idIfpost) async {
    Reference ref =
        _storage.ref().child(childName).child(_auth.currentUser!.uid);

    if (idIfpost != 'profileImageOnly') {
      // enter "profileImageOnly" if its just a profile pic
      ref = _storage
          .ref()
          .child(childName)
          .child(_auth.currentUser!.uid)
          .child(idIfpost);
    }

    UploadTask uploadTask = ref.putData(file);
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }
}

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //upload image post
  Future<String> uploadPost(
      String caption, Uint8List file, String uid, String username) async {
    String res = "error";

    try {
      String postId = const Uuid().v1();
      String photoUrl =
          await StorageMethods().uploadImageToStorage('posts', file, postId);

      Post post = Post(
        caption: caption,
        uid: uid,
        postId: postId,
        username: username,
        datePublished: FieldValue.serverTimestamp(),
        postUrl: photoUrl,
        likes: [],
      );

      // saving in cloud firestore...
      _firestore.collection('posts').doc(postId).set(post.toJson());
      res = "success";
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}
