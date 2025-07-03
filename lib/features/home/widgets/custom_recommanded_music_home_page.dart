import 'package:flutter/material.dart';
import 'package:music_app/features/home/widgets/custom_row_recommeded_music.dart';

class CustomRecommandedMusicHomePage extends StatelessWidget {
  const CustomRecommandedMusicHomePage({super.key, required this.onTap});
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          InkWell(onTap: onTap, child: CustomRowRecommededMusic()),
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 10),
    );
  }
}
