import 'package:flutter/material.dart';
import 'package:music_app/controller/home_page_controller.dart';
import 'package:music_app/core/resources/alignment_mangers.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/height_values_mangers.dart';
import 'package:music_app/features/play_music/widgets/custom_app_bar_play_music_screen.dart';
import 'package:music_app/features/play_music/widgets/custom_button_controller_play_music.dart';
import 'package:music_app/features/play_music/widgets/custom_dongs_detail_play_music.dart';
import 'package:music_app/features/play_music/widgets/custom_tools2_play_music.dart';
import 'package:music_app/features/play_music/widgets/custom_tools_play_music.dart';

class PlayMusicScreen extends StatelessWidget {
  const PlayMusicScreen({super.key});
  @override
  Widget build(BuildContext context) {
    int index =ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarPlayMusicScreen(
        onPressed: () {
          HomePageController.navigtorToPop(context: context);
        },
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(AlignmentMangersx.x0_20, AlignmentMangersy.y_0_90),
            end: Alignment(AlignmentMangersx.x_0_20, AlignmentMangersy.y0_98),
            colors: [ColorMangers.kPrimaryColor, ColorMangers.kDarkBlue],
          ),
        ),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(index.toString()),
                Spacer(),
                CustomDongsDetailPlayMusic(),
                SizedBox(height: HeightValuesMangers.h28),
                CustomButtonControllerPlayMusic(
                  onChanged: (double value) {},
                  value: 0.6,
                ),
                CustomToolsPlayMusic(),
                CustomTools2PlayMusic(),
                SizedBox(height: HeightValuesMangers.h11),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
