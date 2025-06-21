import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes_managers.dart';
import 'package:music_app/core/resources/time_manger.dart';

class SplashController {
  static void navigateToOnBoardingScreen({required context}) {

      Future.delayed(Duration(seconds: SecondsValues.s3),() {
        Navigator.pushReplacementNamed(context, RoutesName.kOnBoardingScreen );
      });


  }
}