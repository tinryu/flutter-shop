import 'package:flutter/material.dart';
import 'package:saleshop/utils/routes.dart';
import 'package:saleshop/widgets/themes.dart';
import 'pages/login_page.dart';
import 'pages/home/home_page.dart';
import 'pages/register_page.dart';
import 'pages/forgot_page.dart';
import 'pages/search/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      // darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.searchRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.registerRoute: (context) => const RegisterPage(),
        MyRoutes.forgotRoute: (context) => const Forgot(),
        MyRoutes.searchRoute: (context) => const SearchPage(),
      },
    );
  }
}
