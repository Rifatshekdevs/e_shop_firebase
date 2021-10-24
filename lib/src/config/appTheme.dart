import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  static Color white = HexColor('#ffffff');
  static Color scafoldBackground = HexColor('#ffffff');

  static Color textColor = HexColor('#2c3e50');
  static Color fillColor = HexColor('#F2F7FB');
  static Color inputTextColor = HexColor('#8A8D93');
  static Color primaryColor = HexColor('#A19CF4');
  static Color accentColor = HexColor('#1C3E6C');

  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: scafoldBackground,
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(primaryColor),
        foregroundColor: MaterialStateProperty.all(white),
        elevation: MaterialStateProperty.all(0),
        overlayColor: MaterialStateProperty.all(Colors.indigo.withOpacity(.5)),
        side: MaterialStateProperty.all(
          BorderSide.none,
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            color: AppTheme.white,
          ),
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: textColor.withOpacity(.7),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accentColor),
  );
}
