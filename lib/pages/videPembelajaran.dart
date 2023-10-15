import 'package:flutter/material.dart';
import 'package:project_incubation/colors.dart';
import 'package:project_incubation/widgets/appBar.dart';

class VideoPembelajaran extends StatelessWidget {
  const VideoPembelajaran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(backgroundColor),
        appBar: DesainAtas(judulPages: "Video Pembelajaran"),
        body: ListView.builder(
            itemCount: 5, itemBuilder: (context, index) => CardVido()
            //
            ));
  }
}

class CardVido extends StatelessWidget {
  const CardVido({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(colorSecond),
      margin: EdgeInsets.all(35),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.asset("assets/home.jpeg", fit: BoxFit.cover)),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            child: Column(
              children: [
                Text(
                  "Ini adalah judul nantinya",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(colorText),
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "disni lah anntiny akan terdapat beberapa descripsi untuk sebagai penjelasansn nanitnya yang akan sangat berjbkggs",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
