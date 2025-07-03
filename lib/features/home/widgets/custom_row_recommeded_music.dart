import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_manger.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/models/songsModel.dart';

class CustomRowRecommededMusic extends StatelessWidget {
  const CustomRowRecommededMusic({super.key,  required this.songsModel});
  final SongsModel songsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(songsModel.song,style: TextStyle(color: ColorMangers.kWhite,fontSize: 15),),
      subtitle: Text(songsModel.singer,style: TextStyle(color: ColorMangers.kLightWhite,fontSize: 12),),
      leading: CircleAvatar(
        backgroundImage: AssetImage(songsModel.image),
        radius: 35,
      ),
      trailing: Icon(CupertinoIcons.heart),
    );
  }
}
