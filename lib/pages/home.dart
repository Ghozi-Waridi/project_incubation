import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_incubation/colors.dart';
import 'package:project_incubation/pages/daftar_mahasiswa.dart';
import 'package:project_incubation/pages/matkul.dart';
import 'package:project_incubation/pages/profile.dart';
import 'package:project_incubation/pages/soalSoal.dart';
import 'package:project_incubation/pages/videPembelajaran.dart';
import 'package:project_incubation/widgets/navbar.dart';
import 'package:project_incubation/widgets/soalTugas.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Latihan()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 40),
                child: CircleAvatar(
                  backgroundColor: Color(colorText),
                  radius: 30,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(colorText),
              ),
              width: 300,
              margin: EdgeInsets.only(left: 40),
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Color(colorSecond),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(color: Color(colorSecond)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                width: 700,
                height: 250,
                margin: EdgeInsets.all(20),
                child: Container(
                  // color: Colors.amber,
                  child: CarouselSlider(
                      options: CarouselOptions(
                          height: 350.0,
                          aspectRatio: 2,
                          enlargeCenterPage: true,
                          autoPlay: true),
                      items: [
                        Container(
                            width: 500,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(35)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/home.jpeg",
                                fit: BoxFit.cover,
                              ),
                            )),
                        Container(
                            width: 500,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(35)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/home2.jpeg",
                                fit: BoxFit.cover,
                              ),
                            )),
                        Container(
                            width: 500,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(35)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/home3.jpeg",
                                fit: BoxFit.cover,
                              ),
                            )),
                        Container(
                            width: 500,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(35)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/home4.jpeg",
                                fit: BoxFit.cover,
                              ),
                            )),
                      ]),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Matkul(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(colorSecond),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 33, 29, 60),
                              offset: Offset(0.0, 0.0),
                              blurRadius: 7,
                              spreadRadius: 2.5,
                            ),
                            BoxShadow(
                              color: Color.fromARGB(255, 33, 29, 60),
                              offset: Offset(0.0, 0.0),
                            )
                          ]),
                      width: 130,
                      height: 130,
                      child: Icon(
                        Icons.menu_book_rounded,
                        size: 80,
                        color: Color(colorText),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SoalSoal()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(colorSecond),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 33, 29, 60),
                              offset: Offset(0.0, 0.0),
                              blurRadius: 7,
                              spreadRadius: 2.5,
                            ),
                            BoxShadow(
                              color: Color.fromARGB(255, 33, 29, 60),
                              offset: Offset(0.0, 0.0),
                            )
                          ]),
                      width: 130,
                      height: 130,
                      child: Icon(
                        Icons.article_rounded,
                        color: Color(colorText),
                        size: 80,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DaftarMahasiswa()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(colorSecond),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 33, 29, 60),
                                offset: Offset(0.0, 0.0),
                                blurRadius: 7,
                                spreadRadius: 2.5,
                              ),
                              BoxShadow(
                                color: Color.fromARGB(255, 33, 29, 60),
                                offset: Offset(0.0, 0.0),
                              )
                            ]),
                        width: 130,
                        height: 130,
                        child: Icon(
                          Icons.school_rounded,
                          color: Color(colorText),
                          size: 80,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VideoPembelajaran()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(colorSecond),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 33, 29, 60),
                                offset: Offset(0.0, 0.0),
                                blurRadius: 7,
                                spreadRadius: 2.5,
                              ),
                              BoxShadow(
                                color: Color.fromARGB(255, 33, 29, 60),
                                offset: Offset(0.0, 0.0),
                              )
                            ]),
                        width: 130,
                        height: 130,
                        child: Icon(
                          Icons.play_arrow_rounded,
                          color: Color(colorText),
                          size: 85,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Navbar(),
    );
  }
}
