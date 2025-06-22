import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/padding_values.dart';
import 'package:music_app/core/resources/string_values.dart';

class CustomSubTitleOnBoardingPage extends StatelessWidget {
  const CustomSubTitleOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: PaddingValues.p70),
      child: Text(
        StringValues.subtitleOnBoardingPage,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15, color: ColorMangers.kWhite),
      ),
    );
  }
}
