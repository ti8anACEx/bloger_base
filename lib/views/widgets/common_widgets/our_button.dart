import 'package:bloger_base/consts/consts.dart';

Widget ourButton({onPress, color, textColor, title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color, padding: const EdgeInsets.all(12)),
      onPressed: onPress,
      child: Text(
        title,
        style: TextStyle(fontFamily: bold, color: textColor),
      ));
}
