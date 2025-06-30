import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_manger.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/font_manger.dart';
import 'package:music_app/core/resources/height_values_mangers.dart';
import 'package:music_app/core/resources/radius_values_manger.dart';

class CustomDongsDetailPlayMusic extends StatelessWidget {
  const CustomDongsDetailPlayMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(RadiusValuesManger.r15),
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(AssetsManger.music1),
            width: 261,
            height: 247,
          ),
        ),
        SizedBox(height: HeightValuesMangers.h11,),
        Text(
          'NEW RULES',
          style: TextStyle(
            fontSize: FontSizeManger.f18,
            fontWeight: FontWeight.w500,
            color: ColorMangers.kWhite,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          'NEW RULES',
          style: TextStyle(
            fontSize: FontSizeManger.f12,
            fontWeight: FontWeight.w500,
            color: ColorMangers.kLightWhite,
          ),
        ),
      ],
    );
  }
}
