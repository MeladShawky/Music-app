import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/font_manger.dart';
import 'package:music_app/core/resources/string_values.dart';
import 'package:music_app/core/resources/width_values_mangers.dart';

class CustomAppBarPlayMusicScreen extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBarPlayMusicScreen({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(onPressed:onPressed, icon: Icon(Icons.arrow_left, color: ColorMangers.kWhite, size: 30),),
      centerTitle: true,
      title: Text(
        StringValues.nowPlaying,
        style: TextStyle(
          color: ColorMangers.kWhite,
          fontSize: FontSizeManger.f18,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        Icon(Icons.share, color: ColorMangers.kWhite,size: 30,),
        SizedBox(width: WidthValuesMangers.w22,),
        Icon(Icons.more_vert_rounded, color: ColorMangers.kWhite,size: 30,),
        SizedBox(width: WidthValuesMangers.w13,),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
