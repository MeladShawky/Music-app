import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes_managers.dart';

class OnBoardingPageController{
  static void navigateToHomeScreen({required BuildContext context}){
    Navigator.pushNamed(context, RoutesName.kHomeScreen);
  }
}