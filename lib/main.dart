import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/page/edit_page.dart';
import 'package:flutter_application_1/page/home_page.dart';
import 'package:flutter_application_1/page/login_page.dart';
import 'package:flutter_application_1/page/main_page.dart';
import 'package:flutter_application_1/page/profile_page.dart';
import 'package:flutter_application_1/style/AppColor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.background,
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/main": (context) => MainPage(),
        "/home": (context) => HomePage(),
        "/profile": (context) => ProfilePage(),
        "/edit": (context) => EditPage(),
      },
    );
  }
}
