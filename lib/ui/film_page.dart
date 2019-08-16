import 'package:flutter/material.dart';

class FilmPage extends StatefulWidget {
  Map item;
  List character;
  List planets;
  List starships;
  List vehicles;
  List species;

  FilmPage(
    this.item,
    this.character,
    this.planets,
    this.starships,
    this.vehicles,
    this.species,
  );

  @override
  _FilmPageState createState() => _FilmPageState();
}

class _FilmPageState extends State<FilmPage> {
  @override
  Widget build(BuildContext context) {
    //print(widget.character);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.item['title']),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Episodio: ',
                      style: TextStyle(
                          fontSize: 16.0,
                          decoration: TextDecoration.underline)),
                ),
                Text('${widget.item['episode_id']}',
                    style: TextStyle(fontSize: 18.0)),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Diretor: ', style: TextStyle(fontSize: 11.0)),
                ),
                Text('${widget.item['director']}',
                    style: TextStyle(
                        fontSize: 16.0, decoration: TextDecoration.underline)),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Produtor(a): ', style: TextStyle(fontSize: 11.0)),
                Text('${widget.item['producer']}',
                    style: TextStyle(
                        fontSize: 11.0, decoration: TextDecoration.underline)),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Data de Lançamento: ',
                      style: TextStyle(
                          fontSize: 12.0,
                          decoration: TextDecoration.underline)),
                ),
                Text('${widget.item['release_date']}',
                    style: TextStyle(fontSize: 12.0)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('Atores participantes: ', style: TextStyle(decoration: TextDecoration.underline, fontSize: 13)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: widget.character.map((item) {
                return Text(item['name']);
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('Planetas participantes: ', style: TextStyle(decoration: TextDecoration.underline, fontSize: 13)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: widget.planets.map((item) {
                return Text(item['name']);
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('Naves estelares: ', style: TextStyle(decoration: TextDecoration.underline, fontSize: 13)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: widget.starships.map((item) {
                return Text(item['name']);
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('Veiculos: ', style: TextStyle(decoration: TextDecoration.underline, fontSize: 13)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: widget.vehicles.map((item) {
                return Text(item['name']);
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('Espécies: ', style: TextStyle(decoration: TextDecoration.underline, fontSize: 13)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: widget.species.map((item) {
                return Text(item['name']);
              }).toList(),
            ), //Padrao de Texto
          ],
        ),
      ),
    );
  }
}
