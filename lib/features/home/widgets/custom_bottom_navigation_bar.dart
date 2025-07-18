import 'package:flutter/material.dart';
import 'package:music_app/controller/home_controller.dart';
import 'package:music_app/core/resources/color_mangers.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key, required this.onTap, required this.index});
  final ValueChanged<int> onTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
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
