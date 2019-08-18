import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:starwars_revenge/ui/home_page.dart';

import 'models/star_wars_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<StarWarsModel>(
        model: StarWarsModel(),
        child: MaterialApp(
          title: 'StarWars Geek',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomePage(),
        ));
  }
}
