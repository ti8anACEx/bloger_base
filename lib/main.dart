import 'package:bloger_base/consts/colors.dart';
import 'package:bloger_base/views/screens/auth_sceens.dart/login_screen.dart';
import 'package:bloger_base/views/screens/auth_sceens.dart/sign_up_screen.dart';
import 'package:bloger_base/views/screens/nav_screen_botttom.dart';
import 'package:bloger_base/views/screens/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloger Base',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: blackColor,
        appBarTheme:
            const AppBarTheme(backgroundColor: blackColor, elevation: 0),
      ),
      home: const SplashScreen(),
    );
  }
}
