import 'package:flutter/material.dart';
import 'package:music_app/controller/home_controller.dart';
import 'package:music_app/features/home/widgets/custom_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeController.homePages[index],
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: (int value) {
          index = value;
          setState(() {});
        }, index: index,
      ),
    );
  }
}
