// ignore_for_file: use_build_context_synchronously, unused_local_variable

import 'package:bloger_base/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../globals/global_methods.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  contentPicker(ImageSource src, BuildContext context, bool isVideo) async {
    if (isVideo == false) {
      final content = await ImagePicker().pickImage(source: src);
      if (content != null) {
        final file = content.readAsBytes();
        String contentPath = content.path;
        showSnackBar("File selected from $contentPath", context);
        // nextScreen(
        //     AddPostScreen(
        //       imageFile: file,
        //       imagePath: contentPath,
        //     ),
        //     context);
      } else {
        showSnackBar("Select a file!", context);
      }
    } else {
      //
    }
  }

  showDialogOptions(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              title: const Text("Upload"),
              backgroundColor: purpleColor,
              children: [
                SimpleDialogOption(
                  onPressed: () {
                    contentPicker(ImageSource.gallery, context, false);
                  },
                  child: const Text("Image from gallery"),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    contentPicker(ImageSource.camera, context, false);
                  },
                  child: const Text("Image from camera"),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    contentPicker(ImageSource.gallery, context, true);
                  },
                  child: const Text("Video from gallery"),
                ),
                SimpleDialogOption(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancel"),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialogOptions(context);
        },
        backgroundColor: greenColor,
        child: const Icon(Icons.upload_rounded),
      ),
      body: const Center(child: Text("Profile scren")),
    );
  }
}
