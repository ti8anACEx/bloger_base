import 'package:bloger_base/consts/consts.dart';
import 'package:bloger_base/globals/global_methods.dart';
import 'package:bloger_base/views/screens/auth_sceens.dart/sign_up_screen.dart';
import 'package:bloger_base/views/widgets/common_widgets/app_logo_widget.dart';
import 'package:bloger_base/views/widgets/common_widgets/custom_txt_field.dart';
import 'package:bloger_base/views/widgets/common_widgets/our_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Spacer(),
        appLogoWidget(),
        10.heightBox,
        "Welcome".text.fontFamily(bold).size(24).fontFamily(bold).bold.make(),
        "Glad to see you!"
            .text
            .fontFamily(bold)
            .size(16)
            .fontWeight(FontWeight.w300)
            .fontFamily(regular)
            .make(),
        50.heightBox,
        customTextField(hint: "example@email.com", title: "Email Address"),
        5.heightBox,
        customTextField(hint: "********", isPass: true, title: "Password"),
        Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {}, child: "Forgot Password?".text.make())),
        20.heightBox,
        ourButton(
            color: purpleColor,
            title: "  Jump In  ",
            textColor: blackColor,
            onPress: () {}),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Don't have an account?  ".text.color(fontGrey).make(),
            "Register Now".text.color(fontGrey).white.make().onTap(() {
              nextScreenReplace(const SignupScreen(), context);
            }),
          ],
        ),
        30.heightBox,
      ])
          .box
          .rounded
          .padding(const EdgeInsets.all(20))
          .shadowSm
          .width(context.screenWidth - 70)
          .make(),
    );
  }
}
