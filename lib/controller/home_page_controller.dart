import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes_managers.dart';

class HomePageController{
  static voidnavigtorToPlayMusicScreen({required BuildContext context}){
    Navigator.pushNamed(context, RoutesName.kPlayMusicScreen);
  }

}