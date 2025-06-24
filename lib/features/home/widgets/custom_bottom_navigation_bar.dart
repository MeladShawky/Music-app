import 'package:flutter/material.dart';
import 'package:music_app/controller/home_controller.dart';
import 'package:music_app/core/resources/color_mangers.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorMangers.kNavigationBarColor,
      items: [
        for(int i=0; i<HomeController.homeIcon.length;i++)
          BottomNavigationBarItem(icon:HomeController.homeIcon[i] ,label: '')

      ],
    ),;
  }
}
