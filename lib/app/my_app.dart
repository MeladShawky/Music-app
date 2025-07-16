import 'package:flutter/material.dart';
import 'package:music_app/controller/play_music%20controller.dart';
import 'package:music_app/core/resources/font_manger.dart';
import 'package:music_app/core/resources/routes_managers.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    PlayMusicController _PlayMusicController = PlayMusicController(0);
    _PlayMusicController.disposeAudio();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: FontManger.orbitronFontName,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.kSplashScreen,
      routes:RoutesMangers.routes ,
    );
  }
}
