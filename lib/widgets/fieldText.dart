import 'package:flutter/material.dart';
import 'package:project_incubation/colors.dart';

class fieldView extends StatelessWidget {
  final TextEditingController username;
  // final TextEditingController password;
  fieldView({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: TextField(
            controller: username,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(colorText)),
                    borderRadius: BorderRadius.circular(35)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(colorText)),
                    borderRadius: BorderRadius.circular(35)),
                fillColor: Color(colorText),
                filled: true,
                hintText: "Username"),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(colorText)),
                    borderRadius: BorderRadius.circular(35)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(colorText)),
                    borderRadius: BorderRadius.circular(35)),
                fillColor: Color(colorText),
                filled: true,
                hintText: "Password"),
          ),
        ),
      ],
    );
  }
}
