import 'package:flutter/material.dart';
import 'package:music_app/controller/home_controller.dart';
import 'package:music_app/core/resources/color_mangers.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key, required this.onTap, required this.index}) : super(key: key);
  final ValueChanged<int> onTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: ColorMangers.kWhite,
      onTap: onTap,
      currentIndex: index,
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorMangers.kNavigationBarColor,
      items: [
        for(int i=0; i<HomeController.homeIcon.length;i++)
          BottomNavigationBarItem(icon:HomeController.homeIcon[i] ,label: '')

      ],
    );
  }
}
