import 'package:flutter/material.dart';

class FilmPage extends StatefulWidget {
  Map item;
  List character;
  List planets;

  FilmPage(
    this.item,
    this.character,
    this.planets,
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
                Text('Episodio: '),
                Text('${widget.item['episode_id']}'),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Diretor: '),
                Text('${widget.item['director']}'),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Produtor(a): '),
                Text('${widget.item['producer']}'),
              ],
            ),
            Row(
              children: <Widget>[
                Text('Data de Lançamento: '),
                Text('${widget.item['release_date']}'),
              ],
            ),
            Text('Atores participantes: '),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: widget.character.map((item) {
                return Text(item['name']);
              }).toList(),
            ),
            Text('Planetas participantes: '),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: widget.planets.map((item) {
                return Text(item['name']);
              }).toList(),
            ),
            Row(
              children: <Widget>[
                //Arrumar
                Text('Episodio: '),
                Text('${widget.item['episode_id']}'),
              ],
            ),
            Row(
              children: <Widget>[
                //Arrumar
                Text('Episodio: '),
                Text('${widget.item['episode_id']}'),
              ],
            ),
            Row(
              children: <Widget>[
                //Arrumar
                Text('Episodio: '),
                Text('${widget.item['episode_id']}'),
              ],
            ), //Padrao de Texto
          ],
        ),
      ),
    );
  }
}
