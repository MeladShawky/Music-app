import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_manger.dart';
import 'package:music_app/core/resources/color_mangers.dart';

class CustomRowRecommededMusic extends StatelessWidget {
  const CustomRowRecommededMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('data',style: TextStyle(color: ColorMangers.kWhite,fontSize: 15),),
      subtitle: Text('data',style: TextStyle(color: ColorMangers.kLightWhite,fontSize: 12),),
      leading: CircleAvatar(
        backgroundImage: AssetImage(AssetsManger.music1),
        radius: 35,
      ),
      trailing: Icon(CupertinoIcons.heart),
    );
  }
}
