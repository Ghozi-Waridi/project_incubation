import 'package:flutter/material.dart';
import 'package:project_incubation/colors.dart';
import 'package:project_incubation/pages/home.dart';
import 'package:project_incubation/widgets/fieldText.dart';
import 'package:project_incubation/data/data_mahasiswa.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _username = TextEditingController();
    // TextEditingController _password = TextEditingController();
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          children: [
            Text(
              "e-learning",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  color: Color(colorText)),
            ),
            Text(
              "UIN MALIKI MALANG",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color(colorText)),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(colorSecond),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 33, 29, 60),
                  offset: Offset(0.0, 0.0),
                  blurRadius: 15,
                ),
              ]),
          width: 400,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              fieldView(
                username: _username,
                // password: _password,
              ),
              Positioned(
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                      color: Color(colorText),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {
                  for (int i = 0; i < namaMhs.length; i++) {
                    if (_username.text == namaMhs[i]["nama"]) {
                      DataMahasiswa.IndexMahasiswa = i;
                    }
                    // } else if (_password.text == namaMhs[i]["nim"]) {}
                  }
                  // print(DataMahasiswa.IndexMahasiswa);
                  if (DataMahasiswa.IndexMahasiswa != -1) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Nama tidak ada")));
                  }
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Color(colorSecond)),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)),
                  backgroundColor: Color(colorText),
                ),
              ),
            ],
          ),
        )
      ])),
    );
  }
}
