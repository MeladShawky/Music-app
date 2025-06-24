import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_manger.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/height_values_mangers.dart' show HeightValuesMangers;

class CustomImageOnBoardingPage extends StatelessWidget {
  const CustomImageOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image(
              image: AssetImage(AssetsManger.music),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: HeightValuesMangers.h199,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0, 1),
                  end: Alignment(0, -1),
                  colors: [
                    ColorMangers.kPrimaryColor,
                    ColorMangers.kLigh3tBlue.withOpacity(0.04),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
