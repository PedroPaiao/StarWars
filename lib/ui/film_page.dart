import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:starwars_revenge/models/star_wars_model.dart';

class FilmPage extends StatefulWidget {
  final Map _item;
  bool loaded = false;

  FilmPage(this._item);

  @override
  _FilmPageState createState() => _FilmPageState();
}

class _FilmPageState extends State<FilmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text(widget._item['title']),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/back.jpg'),
          fit: BoxFit.cover),
        ),
        child: ScopedModelDescendant<StarWarsModel>(
          builder: (context, child, model) {
            int index = model.films.indexOf(widget._item);
            if (!widget.loaded) {
              widget.loaded = true;
              model.chargeEverything(index);
            }
            return model.isLoading
                ? Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Episodio: ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      decoration: TextDecoration.underline)),
                            ),
                            Text('${model.films[index]['episode_id']}',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Diretor: ',
                                  style: TextStyle(
                                      fontSize: 11.0, color: Colors.white)),
                            ),
                            Text('${model.films[index]['director']}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    decoration: TextDecoration.underline)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Produtor(a): ',
                                style: TextStyle(
                                    fontSize: 11.0, color: Colors.white)),
                            Text('${model.films[index]['producer']}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11.0,
                                    decoration: TextDecoration.underline)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Data de Lançamento: ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      decoration: TextDecoration.underline)),
                            ),
                            Text('${model.films[index]['release_date']}',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.white)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('Atores participantes: ',
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  fontSize: 13)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: model.films[index]['characters']
                              .map<Widget>((item) {
                            return Text('${item['name']}',
                                style: TextStyle(color: Colors.white));
                          }).toList(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('Planetas envolvidos: ',
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  fontSize: 13)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: model.films[index]['planets']
                              .map<Widget>((_item) {
                            return Text(
                              _item['name'].toString(),
                              style: TextStyle(color: Colors.white),
                            );
                          }).toList(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('Naves estelares: ',
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  fontSize: 13)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: model.films[index]['starships']
                              .map<Widget>((_item) {
                            return Text(
                              _item['name'].toString(),
                              style: TextStyle(color: Colors.white),
                            );
                          }).toList(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('Veiculos: ',
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  fontSize: 13)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: model.films[index]['vehicles']
                              .map<Widget>((_item) {
                            return Text(
                              _item['name'].toString(),
                              style: TextStyle(color: Colors.white),
                            );
                          }).toList(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('Espécies: ',
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  fontSize: 13)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: model.films[index]['species']
                              .map<Widget>((_item) {
                            return Text(_item['name'].toString(),
                                style: TextStyle(color: Colors.white));
                          }).toList(),
                        ), //Padrao de Texto
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}
