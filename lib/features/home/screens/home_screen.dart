import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_mangers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorMangers.kNavigationBarColor,
        items: [
          BottomNavigationBarItem(label:'',icon: Image(image:AssetImage('assets/images/left_alignment.png'))),
          BottomNavigationBarItem(label: '',icon: Icon(Icons.home,color: ColorMangers.kWhite,)),
          BottomNavigationBarItem(label: '',icon: Icon(Icons.heart_broken_outlined,color: ColorMangers.kWhite,)),
          BottomNavigationBarItem(label: '',icon: Icon(Icons.list,color: ColorMangers.kWhite,)),
          BottomNavigationBarItem(label: '',icon: Icon(Icons.settings,color: ColorMangers.kWhite)),
        ],
      ),
    );
  }
}
