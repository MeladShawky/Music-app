import 'package:flutter/material.dart';

import 'package:music_app/core/resources/assets_manger.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/height_values_mangers.dart';
import 'package:music_app/core/resources/radius_values_manger.dart';
import 'package:music_app/core/resources/width_values_mangers.dart';

class CustomButtonControllerPlayMusic extends StatelessWidget {
  const CustomButtonControllerPlayMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image(image: AssetImage(AssetsManger.vector1)),
        Container(
          width: WidthValuesMangers.w38,
          height: HeightValuesMangers.h38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(RadiusValuesManger.r20),
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
          radius: RadiusValuesManger.r30,
          backgroundColor: ColorMangers.kLightWhite,
          child: Image(image: AssetImage(AssetsManger.vector3)),
        ),
        Container(
          width: WidthValuesMangers.w38,
          height: HeightValuesMangers.h38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(RadiusValuesManger.r20),
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
