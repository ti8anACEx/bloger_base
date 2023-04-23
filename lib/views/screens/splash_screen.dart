import 'package:bloger_base/globals/global_methods.dart';
import 'package:bloger_base/views/screens/auth_sceens.dart/options_screen.dart';
import 'package:bloger_base/views/screens/nav_screen_botttom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bloger_base/consts/consts.dart';
import '../../consts/firebase_consts.dart';
import '../widgets/common_widgets/app_logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//method to change screen

  changeScreen() {
    Future.delayed(const Duration(seconds: 1), () {
      auth.authStateChanges().listen((User? user) {
        if (user == null && mounted) {
          nextScreenReplace(const OptionsScreen(), context);
        } else {
          nextScreenReplace(const NavBarScreeen(), context);
        }
      });

      nextScreenReplace(const OptionsScreen(), context);
    });
  }
  // changeScreen() {
  //   Future.delayed(const Duration(seconds: 1), () {
  //     nextScreenReplace(const OptionsScreen(), context);
  //   });
  // }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Center(
          child: Column(
        children: [
          const Spacer(),
          20.heightBox,
          appLogoWidget(),
          10.heightBox,
          appname.text.fontFamily(bold).white.size(22).make(),
          appversion.text.white.make(),
          const Spacer(),
        ],
      )),
    );
  }
}
