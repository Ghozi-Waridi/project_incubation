import 'package:flutter/material.dart';
import 'package:project_incubation/data/data_video_pembelajaran.dart';
import 'package:project_incubation/pages/videPembelajaran.dart';
import 'package:project_incubation/pages/video.dart';
import 'package:project_incubation/widgets/navbar.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VideoApp(),
    );
  }
}
