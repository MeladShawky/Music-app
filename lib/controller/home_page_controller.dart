import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes_managers.dart';

class HomePageController{
  bool tappedOnSearchTextField=false;
  static void navigtorToPlayMusicScreen({required BuildContext context,required int index}){
    Navigator.pushNamed(context, RoutesName.kPlayMusicScreen,arguments: index);
  }

  static void navigtorToPop({required BuildContext context}){
    Navigator.pop(context);
  }
}