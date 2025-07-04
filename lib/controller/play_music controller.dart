import 'package:audioplayers/audioplayers.dart';
import 'package:music_app/core/resources/constants_value.dart';

class PlayMusicController{
  late int index;
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  late Uri uri;
  PlayMusicController(this.index){
     audioPlayer=AudioPlayer();
     audioCache = AudioCache(prefix: "");

  }
  void play() async {
     uri = await audioCache.load(ConstantsValue.listSongs[index].pathSong);
    audioPlayer.play(UrlSource(uri.toString()));
  }
  void disposeAudio(){
    audioPlayer.dispose();
  }

}