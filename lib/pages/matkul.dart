import 'package:flutter/material.dart';
import 'package:project_incubation/colors.dart';
import 'package:project_incubation/data/data_matkul.dart';
import 'package:project_incubation/widgets/appBar.dart';

class Matkul extends StatelessWidget {
  const Matkul({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: DesainAtas(
        judulPages: "Materi Kuliah",
      ),
      body: Center(
          child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            width: 350,
            height: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(colorSecond)),
            child: Text(
              data[index]["nama"],
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(colorText)),
            ),
          );
        },
      )),
    );
  }
}
