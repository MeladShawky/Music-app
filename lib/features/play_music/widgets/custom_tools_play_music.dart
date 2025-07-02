import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_mangers.dart';
class CustomToolsPlayMusic extends StatelessWidget {
  const CustomToolsPlayMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(7),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: ColorMangers.kLightWhite.withOpacity(0.5),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 89,
        vertical: 7,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(
                CupertinoIcons.heart,
                color: ColorMangers.kWhite,
                size: 35,
              ),
              Text(
                'Like',
                style: TextStyle(
                  color: ColorMangers.kWhite,
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                CupertinoIcons.heart,
                color: ColorMangers.kWhite,
                size: 35,
              ),
              Text(
                'Like',
                style: TextStyle(
                  color: ColorMangers.kWhite,
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                CupertinoIcons.heart,
                color: ColorMangers.kWhite,
                size: 35,
              ),
              Text(
                'Like',
                style: TextStyle(
                  color: ColorMangers.kWhite,
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                CupertinoIcons.heart,
                color: ColorMangers.kWhite,
                size: 35,
              ),
              Text(
                'Like',
                style: TextStyle(
                  color: ColorMangers.kWhite,
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
