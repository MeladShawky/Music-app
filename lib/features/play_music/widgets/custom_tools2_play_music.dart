import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_manger.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/font_manger.dart';

class CustomTools2PlayMusic extends StatelessWidget {
  const CustomTools2PlayMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 11,
        horizontal: 13,
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: ColorMangers.kLightWhite.withOpacity(0.5),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 34,
        vertical: 25,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Up Next',
                style: TextStyle(
                  color: ColorMangers.kWhite,
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff8A86F4).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 10,
                ),
                child: Text(
                  'Up Next',
                  style: TextStyle(
                    color: ColorMangers.kWhite,
                    fontSize: 8,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                width: 55,
                height: 55,
                fit: BoxFit.cover,
                image: AssetImage(AssetsManger.music1),
              ),
            ),
            title: Text('Sing Me To Sleep',style: TextStyle(
              color: ColorMangers.kWhite,
              fontSize: FontSizeManger.f15,
              fontWeight: FontWeight.w500,
            ),),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Alan Walker',style: TextStyle(
                color: ColorMangers.kLightWhite,
                fontSize: FontSizeManger.f12,
                fontWeight: FontWeight.w500,
              ),),
            ),
            trailing:Image(image: AssetImage(AssetsManger.vector4),),
          ),
        ],
      ),
    );
  }
}
