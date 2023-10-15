import 'package:flutter/material.dart';
import 'package:project_incubation/colors.dart';
import 'package:project_incubation/data/data_mahasiswa.dart';
import 'package:project_incubation/widgets/appBar.dart';

class DaftarMahasiswa extends StatelessWidget {
  const DaftarMahasiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(backgroundColor),
        appBar: DesainAtas(
          judulPages: "Daftar Mahasiswa",
        ),
        body: Center(
          child: ListView.builder(
              itemCount: namaMhs.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(20),
                  color: Color(colorSecond),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(namaMhs[index]["foto"]),
                          radius: 80,
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Column(
                          children: [
                            Text(
                              namaMhs[index]["nama"],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                  color: Color(colorText)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              namaMhs[index]["nim"],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: Color(colorText)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(namaMhs[index]["ttl"],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(colorText)))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
