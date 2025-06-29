import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alignment_mangers.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/string_values.dart';
import 'package:music_app/features/home/widgets/custom_row_recommeded_music.dart';
import 'package:music_app/features/home/widgets/custom_search_details.dart';
import 'package:music_app/features/home/widgets/custom_text_field_home_page.dart';
import 'package:music_app/features/home/widgets/custom_title_home_page.dart';
import 'package:music_app/models/songsModel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            CustomTitleHomePage(title: StringValues.Search_Song),
            SizedBox(height: 22),
            CustomSearchDetails(
              songsModel: SongsModel(
                image: 'image',
                singer: 'singer',
                song: 'song',
                pathSong: 'pathSong',
              ),
              itemCount: 10,
            ),
            CustomTitleHomePage(title: StringValues.recommanded_music),
            //SizedBox(height: HeightValuesMangers.h22),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => CustomRowRecommededMusic(),
              itemCount: 30,
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 10),
            ),
          ],
        ),
      ),
    );
  }
}
