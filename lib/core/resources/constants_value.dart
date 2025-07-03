import 'package:music_app/core/resources/assets_manger.dart';
import 'package:music_app/models/songsModel.dart';

class ConstantsValue{
  static List<SongsModel> listSongs=[
    SongsModel(image: AssetsManger.Abyo1, singer: 'Abyusif', song: '3azra2eel', pathSong: AssetsManger.Abyo_3azra2eel),
    SongsModel(image: AssetsManger.Abyo2, singer:'Abyusif', song: '3ESABAT', pathSong: AssetsManger.Abyo_3ESABAT),
    SongsModel(image: AssetsManger.Abyo3, singer: 'Abyusif', song: '7ABAYBY', pathSong: AssetsManger.Abyo_7ABAYBY),
  ];
}