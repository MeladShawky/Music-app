import 'dart:async';

import 'package:flutter/material.dart';

import 'package:music_app/core/resources/assets_manger.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/font_manger.dart';
import 'package:music_app/core/resources/height_values_mangers.dart';
import 'package:music_app/core/resources/radius_values_manger.dart';
import 'package:music_app/core/resources/width_values_mangers.dart';

class CustomButtonControllerPlayMusic extends StatelessWidget {
  const CustomButtonControllerPlayMusic({
    super.key,
    required this.onChanged,
    required this.value,
    required this.onStop,
    required this.playStatusOutputData,
    required this.audioTime,
  });
  final GestureTapCallback onStop;
  final Stream playStatusOutputData;
  final ValueChanged<double> onChanged;
  final double value;
  final String audioTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
                  colors: [ColorMangers.kLightWhite2, ColorMangers.kLightWhite],
                ),
              ),
              child: Image(image: AssetImage(AssetsManger.vector2)),
            ),
            InkWell(
              onTap: onStop,
              child: StreamBuilder(
                stream: playStatusOutputData,
                builder: (context, snapShot) => CircleAvatar(
                  radius: RadiusValuesManger.r30,
                  backgroundColor: ColorMangers.kLightWhite,
                  child: Image(
                    image: AssetImage(
                      snapShot.data == true
                          ? AssetsManger.vector3
                          : AssetsManger.play,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: WidthValuesMangers.w38,
              height: HeightValuesMangers.h38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(RadiusValuesManger.r20),
                gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: [ColorMangers.kLightWhite2, ColorMangers.kLightWhite],
                ),
              ),
              child: Image(image: AssetImage(AssetsManger.vector4)),
            ),
            Image(image: AssetImage(AssetsManger.vector5)),
          ],
        ),
        SizedBox(height: HeightValuesMangers.h28),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SliderTheme(
            data: SliderThemeData(overlayShape: SliderComponentShape.noOverlay),
            child: Slider(
              value: value,
              onChanged: onChanged,
              activeColor: ColorMangers.kLightWhite,
              inactiveColor: Color(0xff2F5D9A),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '2:03',
                style: TextStyle(
                  color: ColorMangers.kLightWhite,
                  fontSize: FontSizeManger.f12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
              audioTime,
                style: TextStyle(
                  color: ColorMangers.kLightWhite,
                  fontSize: FontSizeManger.f12,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
