import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:saleshop/widgets/themes.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SFProText',
        cardColor: creamColor,
        canvasColor: creamColor,
        buttonColor: blueButton,
        accentColor: darkcreamColor,
        appBarTheme: AppBarTheme(
          color: darkcreamColor,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
          titleTextStyle:
              context.textTheme.headline6!.copyWith(color: Colors.black),
        ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.dark,
      fontFamily: 'SFProText',
      cardColor: darkcreamColor,
      canvasColor: darkcreamColor,
      buttonColor: blueButton,
      accentColor: creamColor,
      appBarTheme: AppBarTheme(
        color: creamColor,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle:
            context.textTheme.headline6!.copyWith(color: Colors.white),
      ));

  static Color creamColor = Color.fromARGB(255, 255, 255, 255);
  static Color darkcreamColor = const Color(0xff333A42);
  static Color darkBluishColor = const Color(0xff061840);
  static Color lightBluishColor = const Color(0xffB8D0EE);
  static Color blueButton = const Color(0xff39B3F2);
  static Color redButton = const Color(0xffFF8080);
}
