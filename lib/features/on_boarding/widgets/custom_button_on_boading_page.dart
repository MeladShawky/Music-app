
import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/height_values_mangers.dart';
import 'package:music_app/core/resources/radius_values_manger.dart';
import 'package:music_app/core/resources/string_values.dart';
import 'package:music_app/core/resources/width_values_mangers.dart';

class CustomButtonOnBoardingPage extends StatelessWidget {
  const CustomButtonOnBoardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Container(
        alignment: Alignment.center,
        width: WidthValuesMangers.w171,
        height: HeightValuesMangers.h60,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusValuesManger.r50),
          border: Border(
            top: BorderSide(color: ColorMangers.kWhite, width: WidthValuesMangers.w2),
          ),
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [ColorMangers.kLigh2tBlue, ColorMangers.kLightBlue],
          ),
        ),
        child: Text(
          StringValues.get_started,
          style: TextStyle(color: ColorMangers.kWhite, fontSize: 18),
        ),
      ),
      onPressed: () {},
    );
  }
}
