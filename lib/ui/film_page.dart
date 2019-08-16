import 'package:flutter/material.dart';

class FilmPage extends StatefulWidget {
  Map item;
  List character;
  FilmPage(
      this.item,
      this.character,
      );
  @override
  _FilmPageState createState() => _FilmPageState();
}

class _FilmPageState extends State<FilmPage> {
  @override
  Widget build(BuildContext context) {
    print(widget.character);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.item['title']),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Row(
              children: <Widget>[ //Arrumar
                Text('Atores participantes: '),
                Column(
                  children: widget.character.map((character){
                    return Text(character['name']);
                  }).toList(),
                ),
              ],
            ),
            Row(
              children: <Widget>[ //Arrumar
                Text('Episodio: '),
                Text('${widget.item['episode_id']}'),
              ],
            ),
            Row(
              children: <Widget>[ //Arrumar
                Text('Episodio: '),
                Text('${widget.item['episode_id']}'),
              ],
            ),
            Row(
              children: <Widget>[ //Arrumar
                Text('Episodio: '),
                Text('${widget.item['episode_id']}'),
              ],
            ),
            Row(
              children: <Widget>[ //Arrumar
                Text('Episodio: '),
                Text('${widget.item['episode_id']}'),
              ],
            ),//Padrao de Texto
          ],
        ),
      ),
    );
  }
}
