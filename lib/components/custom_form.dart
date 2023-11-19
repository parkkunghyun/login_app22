
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app22/size_gap.dart';

import 'package:validators/validators.dart';

class CustomForm extends StatelessWidget {
  final String title;
  final mValid;

  const CustomForm({required this.title, required this.mValid });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,),
        const SizedBox(height: minimum_gap,),
        TextFormField(
          maxLength: 20,
          validator: mValid,
          obscureText: title == "Password" ? true : false,
          decoration: InputDecoration(
            hintText: "Enter $title",
            enabledBorder: _buildOutlineInputBorder(),
            focusedErrorBorder: _buildOutlineInputBorder(),
            focusedBorder:  _buildOutlineInputBorder(),
            errorBorder: _buildOutlineInputBorder(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          );
  }
}