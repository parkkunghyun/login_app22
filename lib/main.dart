import 'package:flutter/material.dart';
import 'package:login_app22/pages/home_page.dart';
import 'package:login_app22/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _buildThemeData(),
      initialRoute: "/login",
      routes: {
        "/login" : (context) => LoginPage(),
        "/home" : (context) => HomePage(),
      },
    );
  }

  ThemeData _buildThemeData() {
    return ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Colors.black,
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          minimumSize: const Size(400, 60),
        ),
      ),
    );
  }


}
