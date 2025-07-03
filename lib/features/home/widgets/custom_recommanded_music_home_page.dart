import 'package:flutter/material.dart';
import 'package:music_app/features/home/widgets/custom_row_recommeded_music.dart';
import 'package:music_app/models/songsModel.dart';


class CustomRecommandedMusicHomePage extends StatelessWidget {
  const CustomRecommandedMusicHomePage({super.key, required this.onTap, required this.songsModel});
  final GestureTapCallback onTap;
  final List<SongsModel> songsModel;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          InkWell(onTap: onTap, child: CustomRowRecommededMusic(songsModel:songsModel[index] )),
      itemCount: songsModel.length,
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 10),
    );
  }
}
