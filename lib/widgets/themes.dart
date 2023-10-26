import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:velocity_x/velocity_x.dart";

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      brightness: Brightness.light,
      cardColor: Colors.white,
      primaryColor: Colors.deepOrange,
      canvasColor: creamcolor,
      buttonTheme: ButtonThemeData(buttonColor: DarkCremecolor),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      brightness: Brightness.dark,
      primaryColor: Colors.greenAccent,
      canvasColor: DarkCremecolor,
      buttonTheme:
          ButtonThemeData(colorScheme: ColorScheme.dark(primary: lightbluish)),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white),
      ));

  //colors
  static Color creamcolor = Color(0xfff5f5f5);
  static Color DarkCremecolor = Vx.gray800;
  static Color bluishcolor = Color(0xff403b58);
  static Color lightbluish = Vx.indigo500;
}
