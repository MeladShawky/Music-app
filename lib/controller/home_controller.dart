import 'package:flutter/material.dart';
import 'package:music_app/features/home/screens/home_page.dart';


class HomeController{
  static List<Icon> homeIcon = [
    Icon(Icons.align_horizontal_left,),
    Icon(Icons.home, ),
    Icon(Icons.heart_broken_outlined, ),
    Icon(Icons.list, ),
    Icon(Icons.settings, ),
  ];
  static List<Widget> homePages = [
    Scaffold(
      body: Center(child: Text('align_horizontal_left'),),
    ),
    HomePage(),
    Scaffold(
      body: Center(child: Text('heart_broken_outlined'),),
    ),
    Scaffold(
      body: Center(child: Text('list'),),
    ),
    Scaffold(
      body: Center(child: Text('settings'),),
    )
  ];
}