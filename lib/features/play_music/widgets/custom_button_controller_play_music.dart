import 'package:flutter/material.dart';

import 'package:music_app/core/resources/assets_manger.dart';
import 'package:music_app/core/resources/color_mangers.dart';

class CustomButtonControllerPlayMusic extends StatelessWidget {
  const CustomButtonControllerPlayMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image(image: AssetImage(AssetsManger.vector1)),
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: [
                ColorMangers.kLightWhite2,
                ColorMangers.kLightWhite,
              ],
            ),
          ),
          child: Image(image: AssetImage(AssetsManger.vector2)),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: ColorMangers.kLightWhite,
          child: Image(image: AssetImage(AssetsManger.vector3)),
        ),
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: [
                ColorMangers.kLightWhite2,
                ColorMangers.kLightWhite,
              ],
            ),
          ),
          child: Image(image: AssetImage(AssetsManger.vector4)),
        ),
        Image(image: AssetImage(AssetsManger.vector5)),
      ],
    );
  }
}
