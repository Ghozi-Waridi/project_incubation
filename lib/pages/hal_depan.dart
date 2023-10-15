import 'package:flutter/material.dart';
import 'package:project_incubation/colors.dart';
import 'package:project_incubation/pages/login.dart';

class HalDepan extends StatelessWidget {
  const HalDepan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Logo_uin.png",
              width: 250,
              height: 250,
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, bottom: 150),
                  child: Column(
                    children: [
                      Text(
                        "UIN MALIKI MALANG",
                        style: TextStyle(
                            color: Color(colorText),
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 350,
                        child: Text(
                            "Unggul, Berdaya Saing, dan Bereputasi Internasional",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            )),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    backgroundColor: Color(colorText),
                    elevation: 20,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    "GET STARTED",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(colorSecond)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
