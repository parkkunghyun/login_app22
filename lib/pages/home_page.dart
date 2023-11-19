
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app22/components/logo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: [
         Logo("Home Page"),
         TextButton(
             onPressed: () {
               Navigator.pop(context);
             },
             child: Text("로그인페이지로 돌아가기"),
         ),
       ],
     ),
   );
  }
}