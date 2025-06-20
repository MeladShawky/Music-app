import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alignment_mangers.dart';
import 'package:music_app/core/resources/assets_manger.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/height_values_mangers.dart';
import 'package:music_app/core/resources/width_values_mangers.dart';

class CustomLogoSplashScreen extends StatelessWidget {
  const CustomLogoSplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(AlignmentMangersx.x0_20, AlignmentMangersy.y_0_90),
          end: Alignment(AlignmentMangersx.x_0_20, AlignmentMangersy.y0_98),
          colors: [
            ColorMangers.kPrimaryColor,
            ColorMangers.kSecandPrimaryColor.withOpacity(0.54),
          ],
        ),
      ),
      child: Center(
        child: Image(
          width: WidthValuesMangers.w200,
          height: HeightValuesMangers.h200,
          image: AssetImage(AssetsManger.logo),
        ),
      ),
    );
  }
}