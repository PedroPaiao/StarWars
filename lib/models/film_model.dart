import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:starwars_revenge/ui/film_page.dart';

class FilmModel extends StatefulWidget {
  List characters = [];
  List planets = [];
  List starships = [];
  bool completed = false;
  List vehicles = [];
  List species = [];
  Map _item;

  String _title;
  String _episodeId;
  String _openingCrawl;
  String _director;
  String _producer;
  String _releaseDate;
  List<String> _characters;
  List<String> _planets;
  List<String> _starships;
  List<String> _vehicles;
  List<String> _species;

  FilmModel(this._item);

//  FilmModel(
//      this._title,
//      this._episodeId,
//      this._openingCrawl,
//      this._director,
//      this._producer,
//      this._releaseDate,
//      this._characters,
//      this._planets,
//      this._starships,
//      this._vehicles,
//      this._species,
//      );

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['title'] = _title;
    map['episode_id'] = _episodeId;
    map['opening_crawl'] = _openingCrawl;
    map['director'] = _director;
    map['producer'] = _producer;
    map['release_date'] = _releaseDate;
    map['characters'] = _characters;
    map['planets'] = _planets;
    map['starships'] = _starships;
    map['vehicles'] = _vehicles;
    map['species'] = _species;
    return map;
  }

  @override
  _FilmModelState createState() => _FilmModelState();
}

class _FilmModelState extends State<FilmModel> {
  constructingTheBank() async {
    Response response;
    for (String link in widget._item['characters']) {
      response = await Dio().get(link);
      widget.characters.add(response.data);
    }
    for (String link in widget._item['planets']) {
      response = await Dio().get(link);
      widget.planets.add(response.data);
    }
    for (String link in widget._item['starships']) {
      response = await Dio().get(link);
      widget.starships.add(response.data);
    }
    for (String link in widget._item['vehicles']) {
      response = await Dio().get(link);
      widget.vehicles.add(response.data);
    }
    for (String link in widget._item['species']) {
      response = await Dio().get(link);
      widget.species.add(response.data);
    }
    print('entrou');
    setState(() {
      widget.completed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.characters.length == 0 &&
        widget.planets.length == 0 &&
        widget.starships.length == 0 &&
        widget.vehicles.length == 0 &&
        widget.species.length == 0)
      constructingTheBank(); //Cancela as repetições
    return GestureDetector(
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: !widget.completed
            ? Center(child: CircularProgressIndicator())
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(widget._item['title'],
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600)),
                  SizedBox(height: 5.0),
                  Text(widget._item['release_date']),
                  SizedBox(height: 5.0),
                  Text(widget._item['director']),
                  SizedBox(height: 5.0),
                  Text(widget._item['opening_crawl']),
                ],
              ),
      )),
      onTap: () {
        if (widget.completed)
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => FilmPage(widget._item, widget.characters,
                      widget.planets, widget.starships, widget.vehicles, widget.species)));
      },
    );
  }
}
