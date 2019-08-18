import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:starwars_revenge/ui/home_page.dart';
import 'models/star_wars_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final assets = <String>[
    "Theme.mp3",
  ];
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();

  void _open(int assetIndex) {
    _assetsAudioPlayer.open(
      AssetsAudio(
        asset: assets[assetIndex],
        folder: "assets/audios/",
      ),
    );//Inicia a musica pela Main.
  }

  @override
  Widget build(BuildContext context) {
    _open(0); //Chama a musica.
    return ScopedModel<StarWarsModel>(
        model: StarWarsModel(),
        child: MaterialApp(
          title: 'StarWars Geek',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomePage(), //Chama minha homePage
        ));
  }
}
