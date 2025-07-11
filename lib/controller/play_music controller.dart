import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:music_app/core/resources/constants_value.dart';

class PlayMusicController {
  late int index;
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  late Uri uri;
  late bool isPlaying = true;
  late double valueSlider=0;
  late StreamController<bool> playStatusStreamController;
  late Sink<bool> playStatusInputData;
  late Stream<bool> playStatusOutputData;

  late StreamController<Duration> durationNowStreamController;
  late Sink<Duration> durationNowInputData;
  late Stream<String> durationNowOutputData;

  late StreamController<Duration> sliderValueStreamController;
  late Sink<Duration> sliderValueNowInputData;
  late Stream<double> sliderValueNowOutputData;

  late StreamController<int> detailsStreamController;
  late Sink<int> detailsInputData;
  late Stream<int> detailsOutputData;


  PlayMusicController._internal(this.index) {
    audioPlayer = AudioPlayer();
    audioCache = AudioCache(prefix: "");
    playStatusStreamController = StreamController();
    playStatusInputData = playStatusStreamController.sink;
    playStatusOutputData = playStatusStreamController.stream
        .asBroadcastStream();
    durationNowStreamController = StreamController();
    durationNowInputData = durationNowStreamController.sink;
    durationNowOutputData = durationNowStreamController.stream.map(
      (event) => trasferDurationToMinuetAndSecond(event),
    );
    durationNowOutputData = durationNowStreamController.stream
        .asBroadcastStream()
        .map((event) => trasferDurationToMinuetAndSecond(event));

    sliderValueStreamController = StreamController();
    sliderValueNowInputData = sliderValueStreamController.sink;
    sliderValueNowOutputData = sliderValueStreamController.stream.asBroadcastStream().map((event)=>transferDurationToValueSlider(event));
    sliderValueNowOutputData = sliderValueStreamController.stream.asBroadcastStream().map((event)=>transferDurationToValueSlider(event));

    detailsStreamController = StreamController();
    detailsInputData = detailsStreamController.sink;
    detailsOutputData = detailsStreamController.stream
        .asBroadcastStream();
  }
  static PlayMusicController? instance;

  factory PlayMusicController(int index) {
    if (instance != null) instance!.index = index;
    instance ??= PlayMusicController._internal(index);
    return instance!;
  }
  Duration? audioTime;

  double transferDurationToValueSlider(Duration duration)
  {
    double durationNowOnSecond=duration.inSeconds.toDouble();
    double maxTime=audioTime!.inSeconds.toDouble();
   valueSlider=(durationNowOnSecond/maxTime)*1.0;
   return valueSlider;
  }

  Duration transferValueSliderToDuration(double sliderValue)
  {
    double valueNow=(sliderValue/1.0)*audioTime!.inSeconds.toDouble();
     return Duration(seconds: valueNow.toInt());
  }

  void onChangedThumbSlider(double value){
  Duration duration=transferValueSliderToDuration(value);
  audioPlayer.seek(duration);
  }

  void onNextTap(){
    if (index<ConstantsValue.listSongs.length-1) {
      index++;
    }  else {
      index=0;
    }
    play();
  }

  Future<Duration?> play() async {
    uri = await audioCache.load(ConstantsValue.listSongs[index].pathSong);
    await audioPlayer.play(UrlSource(uri.toString()));
    audioTime = await audioPlayer.getDuration();
    detailsInputData.add(index);
    audioPlayer.onPositionChanged.listen((event) {
      durationNowInputData.add(event);
      sliderValueNowInputData.add(event);
    });
    isPlaying = true;
    playStatusInputData.add(isPlaying);
    return audioTime;
  }

  Future<String> myDuration() async {
    Future.delayed(Duration(seconds: 2));
    return 'hello';
  }

  void changePlayStatus() {
    if (audioPlayer.state == PlayerState.playing) {
      audioPlayer.pause();
      isPlaying = false;
    } else if (audioPlayer.state == PlayerState.paused) {
      audioPlayer.resume();
      isPlaying = true;
    }
    playStatusInputData.add(isPlaying);
  }

  void disposeAudio() {
    playStatusInputData.close();
    playStatusStreamController.close();
    // audioPlayer.dispose();
  }

  String trasferDurationToMinuetAndSecond(Duration? duration) {
    String minute = duration!.inMinutes
        .remainder(60)
        .toString()
        .padLeft(2, '0');
    String second = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minute:$second';
  }
}
