import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alignment_mangers.dart';
import 'package:music_app/core/resources/color_mangers.dart';
import 'package:music_app/core/resources/font_manger.dart';
import 'package:music_app/features/play_music/widgets/custom_app_bar_play_music_screen.dart';

class PlayMusicScreen extends StatelessWidget {
  const PlayMusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarPlayMusicScreen(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(AlignmentMangersx.x0_20, AlignmentMangersy.y_0_90),
            end: Alignment(AlignmentMangersx.x_0_20, AlignmentMangersy.y0_98),
            colors: [ColorMangers.kPrimaryColor, ColorMangers.kDarkBlue],
          ),
        ),
      ),
    );
  }
}
