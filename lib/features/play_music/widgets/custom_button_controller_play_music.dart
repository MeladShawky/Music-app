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
    required this.onStop,
    required this.playStatusOutputData,
    required this.audioTime,
    required this.durationNowOutputData,
    required this.sliderValueOutputData,
    required this.onTapNext, required this.onTapback, required this.onTapLoop, required this.loopStatusOutputData,
  });
  final GestureTapCallback onStop;
  final Stream playStatusOutputData;
  final Stream<String> durationNowOutputData;
  final Stream<bool> loopStatusOutputData;
  final Stream<double> sliderValueOutputData;
  final ValueChanged<double> onChanged;
  final GestureTapCallback onTapNext;
  final GestureTapCallback onTapLoop;
  final GestureTapCallback onTapback;
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
              child: InkWell(onTap: onTapback,child: Image(image: AssetImage(AssetsManger.vector2))),
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
              child: InkWell(
                onTap: onTapNext,
                child: Image(image: AssetImage(AssetsManger.vector4)),
              ),
            ),
            InkWell(
              onTap: onTapLoop,
              child: StreamBuilder(
                stream: loopStatusOutputData ,
                builder: (context, snapshot) {
                  return Image(width: 26,height: 26,image: AssetImage(snapshot.data==null?AssetsManger.vector5:AssetsManger.vector6));
                }
              ),
            ),
          ],
        ),
        SizedBox(height: HeightValuesMangers.h28),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: StreamBuilder<double>(
            stream: sliderValueOutputData,
            builder: (context, snapshot) {
              return SliderTheme(
                data: SliderThemeData(
                  overlayShape: SliderComponentShape.noOverlay,
                ),
                child: Slider(
                  value: snapshot.data == null ? 0 : snapshot.data!.toDouble(),
                  onChanged: onChanged,
                  activeColor: ColorMangers.kLightWhite,
                  inactiveColor: Color(0xff2F5D9A),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StreamBuilder<String>(
                stream: durationNowOutputData,
                builder: (context, snapshot) {
                  return Text(
                    snapshot.data.toString(),
                    style: TextStyle(
                      color: ColorMangers.kLightWhite,
                      fontSize: FontSizeManger.f12,
                      fontWeight: FontWeight.w500,
                    ),
                  );
                },
              ),
              Text(
                audioTime,
                style: TextStyle(
                  color: ColorMangers.kLightWhite,
                  fontSize: FontSizeManger.f12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
