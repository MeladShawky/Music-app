import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_manger.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/font_manger.dart';
import 'package:music_app/core/resources/height_values_mangers.dart';
import 'package:music_app/core/resources/padding_values.dart';
import 'package:music_app/core/resources/radius_values_manger.dart';
import 'package:music_app/core/resources/width_values_mangers.dart';
import 'package:music_app/models/songsModel.dart';

class CustomSearchDetails extends StatelessWidget {
   CustomSearchDetails({super.key,required this.songsModel, required this.itemCount, required this.onTap});
  List<SongsModel> songsModel;
  final int itemCount;
   final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingValues.p18),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(RadiusValuesManger.r15),
                  child: Image(
                    image: AssetImage(songsModel[index].image),
                    fit: BoxFit.cover,
                    width: WidthValuesMangers.w150,
                    height: HeightValuesMangers.h150,
                  ),
                ),
                SizedBox(height: HeightValuesMangers.h9),
                Text(
                  songsModel[index].song,
                  style: TextStyle(
                    fontSize: FontSizeManger.f15,
                    fontWeight: FontWeight.w500,
                    color: ColorMangers.kWhite,
                  ),
                ),
                SizedBox(height: HeightValuesMangers.h4),
                Text(
                  songsModel[index].singer,
                  style: TextStyle(
                    fontSize: FontSizeManger.f12,
                    fontWeight: FontWeight.w500,
                    color: ColorMangers.kLightWhite,
                  ),
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) =>
              SizedBox(width: WidthValuesMangers.w17),
          itemCount: itemCount,
        ),
      ),
    );
  }
}
