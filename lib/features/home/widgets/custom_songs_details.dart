import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_manger.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/font_manger.dart';

class CustomSongsDetails extends StatelessWidget {
  const CustomSongsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: AssetImage(AssetsManger.music1),
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ),
            Text(
              'music name',
              style: TextStyle(
                fontSize: FontSizeManger.f15,
                fontWeight: FontWeight.w500,
                color: ColorMangers.kWhite,
              ),
            ),
            Text(
              'singer',
              style: TextStyle(
                fontSize: FontSizeManger.f12,
                fontWeight: FontWeight.w500,
                color: ColorMangers.kLightWhite,
              ),
            ),
          ],
        ),
        separatorBuilder: (context, index) => SizedBox(width: 17),
        itemCount: 3,
      ),
    );
  }
}
