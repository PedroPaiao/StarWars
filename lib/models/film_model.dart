import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:starwars_revenge/models/star_wars_model.dart';
import 'package:starwars_revenge/ui/film_page.dart';

class FilmModel extends StatefulWidget {
  final Map _item;

  Map<String, dynamic> map2 = {
    '1': 'assets/1.jpg',
    '2': 'assets/2.jpg',
    '3': 'assets/3.png',
    '4': 'assets/4.jpg',
    '5': 'assets/5.jpg',
    '6': 'assets/6.jpg',
    '7': 'assets/7.jpg',
  };

  FilmModel(this._item);

  @override
  _FilmModelState createState() => _FilmModelState();
}

class _FilmModelState extends State<FilmModel> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<StarWarsModel>(
      builder: (context, child, model) {
        return GestureDetector(
          child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                Image.asset(widget.map2['${widget._item['episode_id']}']),
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
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => FilmPage(widget._item)));
          },
        );
      },
    );
  }
}
