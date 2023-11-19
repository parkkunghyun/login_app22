
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app22/components/custom_form.dart';
import 'package:login_app22/size_gap.dart';

import 'package:validators/validators.dart';

class CustomFormField extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomForm(title: "Email", mValid:
          (value)
          {
            if (value!.isEmpty) {
              return "Please enter some text";
            } else if (!isEmail(value)) {
              return "Please type Email";
            }
            else {
              return null;
            }
          },
          ),
          SizedBox(height: minimum_gap,),
          CustomForm(title: "Password",
            mValid: (value)
            {
              if (value!.isEmpty) {
                return "비어있다";
              }
              else if(value.toString().length > 20) {
                return "초과";
              }
              else {
                return null;
              }
            },
          ),
          SizedBox(height: medium_gap,),
          TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, "/home");
                }
              },
              child: Text("홈 페이지 들어가기"),
          ),
        ],
      ),
    );
  }
}