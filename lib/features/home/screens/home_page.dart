import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/controller/home_page_controller.dart';
import 'package:music_app/core/resources/alignment_mangers.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/constants_value.dart';
import 'package:music_app/core/resources/string_values.dart';
import 'package:music_app/features/home/widgets/custom_recommanded_music_home_page.dart';

import 'package:music_app/features/home/widgets/custom_search_details.dart';
import 'package:music_app/features/home/widgets/custom_text_field_home_page.dart';
import 'package:music_app/features/home/widgets/custom_title_home_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(AlignmentMangersx.x0_20, AlignmentMangersy.y_0_90),
          end: Alignment(AlignmentMangersx.x_0_20, AlignmentMangersy.y0_98),
          colors: [ColorMangers.kPrimaryColor, ColorMangers.kDarkBlue],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFieldHomePage(),
            CustomTitleHomePage(title: StringValues.searchSong),
            SizedBox(height: 22),
            CustomSearchDetails(
              songsModel: ConstantsValue.listSongs,
              itemCount: 3,
              onTap: (index) {
                HomePageController.navigtorToPlayMusicScreen(context: context, index: index );
              },
            ),
            CustomTitleHomePage(title: StringValues.recommandedMusic),
            //SizedBox(height: HeightValuesMangers.h22),
            CustomRecommandedMusicHomePage(
              onTap: (index) {
                HomePageController.navigtorToPlayMusicScreen(context: context,index: index);
              }, songsModel:ConstantsValue.listSongs,
            ),
          ],
        ),
      ),
    );
  }
}
