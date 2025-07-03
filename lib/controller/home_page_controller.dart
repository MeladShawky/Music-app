import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes_managers.dart';

class HomePageController{
  static void navigtorToPlayMusicScreen({required BuildContext context}){
    Navigator.pushNamed(context, RoutesName.kPlayMusicScreen);
  }

  static void navigtorToPop({required BuildContext context}){
    Navigator.pop(context);
  }
}