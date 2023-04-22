import 'package:bloger_base/consts/colors.dart';
import 'package:bloger_base/globals/global_methods.dart';
import 'package:bloger_base/views/screens/auth_sceens.dart/login_screen.dart';
import 'package:bloger_base/views/screens/auth_sceens.dart/sign_up_screen.dart';
import 'package:bloger_base/views/widgets/common_widgets/cool_text_box_widget.dart';
import 'package:bloger_base/views/widgets/common_widgets/our_button.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

import '../../widgets/common_widgets/app_logo_widget.dart';

class OptionsScreen extends StatefulWidget {
  const OptionsScreen({super.key});

  @override
  State<OptionsScreen> createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              appLogoWidget(),
              50.heightBox,
              ourButton(
                  title: "     Login    ",
                  onPress: () {
                    nextScreenReplace(const LoginScreen(), context);
                  },
                  color: purpleColor,
                  textColor: whiteColor),
              10.heightBox,
              ourButton(
                  title: "     SignUp     ",
                  onPress: () {
                    nextScreenReplace(const SignupScreen(), context);
                  },
                  color: greenColor,
                  textColor: whiteColor)
            ])
            .box
            .roundedLg
            .color(fontGrey)
            .height(context.screenHeight * 0.3)
            .width(context.screenWidth * 0.7)
            .make(),
      ),
    );
  }
}
