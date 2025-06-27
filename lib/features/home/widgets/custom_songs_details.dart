import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_manger.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/font_manger.dart';
import 'package:music_app/core/resources/height_values_mangers.dart';
import 'package:music_app/core/resources/padding_values.dart';
import 'package:music_app/core/resources/radius_values_manger.dart';
import 'package:music_app/core/resources/width_values_mangers.dart';

class CustomSongsDetails extends StatelessWidget {
  const CustomSongsDetails({super.key, required this.musicName, required this.singre, required this.itemCount});
  final String musicName;
  final String singre;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingValues.p18),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(RadiusValuesManger.r15),
                child: Image(
                  image: AssetImage(AssetsManger.music1),
                  fit: BoxFit.cover,
                  width: WidthValuesMangers.w150,
                  height: HeightValuesMangers.h150,
                ),
              ),
              SizedBox(height: HeightValuesMangers.h9),
              Text(
                musicName,
                style: TextStyle(
                  fontSize: FontSizeManger.f15,
                  fontWeight: FontWeight.w500,
                  color: ColorMangers.kWhite,
                ),
              ),
              SizedBox(height: HeightValuesMangers.h4),
              Text(
                singre,
                style: TextStyle(
                  fontSize: FontSizeManger.f12,
                  fontWeight: FontWeight.w500,
                  color: ColorMangers.kLightWhite,
                ),
              ),
            ],
          ),
          separatorBuilder: (context, index) =>
              SizedBox(width: WidthValuesMangers.w17),
          itemCount: itemCount,
        ),
      ),
    );
  }
}
