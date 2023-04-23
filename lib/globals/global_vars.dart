//this is the list of primary app screens
import 'package:bloger_base/views/screens/home_screen.dart';
import 'package:bloger_base/views/screens/profile_screen.dart';
import 'package:bloger_base/views/screens/trending_screen.dart';
import 'package:bloger_base/views/screens/videos_screen.dart';

List globalAppScreens = [
  const HomeScreen(),
  const TrendingScreen(),
  const DisplayVideoScreen(),
  const ProfileScreen(),
];
