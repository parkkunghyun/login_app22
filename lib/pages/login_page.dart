

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app22/components/custom_form.dart';
import 'package:login_app22/components/custom_form_field.dart';
import 'package:login_app22/components/logo.dart';
import 'package:login_app22/size_gap.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(large_gap),
       child: ListView(
         children: [
           SizedBox(height: xlarge_gap,),
           Logo("hello"),
           SizedBox(height: xlarge_gap,),
           CustomFormField(),
         ],
       ),
     ),
   );
  }
}