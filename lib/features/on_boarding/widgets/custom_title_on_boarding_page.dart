import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/font_manger.dart';
import 'package:music_app/core/resources/string_values.dart';

class CustomTitleOnBoardingPage extends StatelessWidget {
  const CustomTitleOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          StringValues.titleOnBoardingPage ,
          style: TextStyle(
            height: 1.3,
            color: ColorMangers.kWhite,
            fontSize: FontSizeManger.f50,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          StringValues.titleOnBoardingPage2,
          style: TextStyle(
            height: 1.3,
            color: ColorMangers.kLightBlue,
            fontSize: FontSizeManger.f50,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
