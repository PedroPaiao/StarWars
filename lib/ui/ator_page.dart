import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:starwars_revenge/models/star_wars_model.dart';

class AtorPage extends StatefulWidget {
  final Map _item;
  int index;
  bool loaded = false;

  AtorPage(
      this._item,
      this.index
      );

  @override
  _AtorPageState createState() => _AtorPageState();
}

class _AtorPageState extends State<AtorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text(
          '${widget._item['name']}',
          style: TextStyle(
            fontSize: 24.0,
            inherit: true,
            shadows: [
              Shadow(
                  // bottomLeft
                  offset: Offset(-1.5, -1.5),
                  color: Color.fromRGBO(255, 232, 31, 70)),
              Shadow(
                  // bottomRight
                  offset: Offset(1.5, -1.5),
                  color: Color.fromRGBO(255, 232, 31, 70)),
              Shadow(
                  // topRight
                  offset: Offset(1.5, 1.5),
                  color: Color.fromRGBO(255, 232, 31, 70)),
              Shadow(
                  // topLeft
                  offset: Offset(-1.5, 1.5),
                  color: Color.fromRGBO(255, 232, 31, 70)),
            ],
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/back.jpg'), fit: BoxFit.cover),
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
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Ano de nascimento: ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        decoration: TextDecoration.underline)),
                              ),
                              Text('${widget._item['birth_year']}',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Sexo: ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        decoration: TextDecoration.underline)),
                              ),
                              Text('${widget._item['gender']}',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Cor do cabelo: ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        decoration: TextDecoration.underline)),
                              ),
                              Text('${widget._item['hair_color']}',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Altura: ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        decoration: TextDecoration.underline)),
                              ),
                              Text('${widget._item['height']}',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Peso: ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        decoration: TextDecoration.underline)),
                              ),
                              Text('${widget._item['mass']}',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Cor da pele: ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        decoration: TextDecoration.underline)),
                              ),
                              Text('${widget._item['skin_color']}',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('----------------',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        decoration: TextDecoration.underline)),
                              ),
                              Text('----------------',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('----------------',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        decoration: TextDecoration.underline)),
                              ),
                              Text('----------------',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('----------------',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        decoration: TextDecoration.underline)),
                              ),
                              Text('${widget._item['----------------']}',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
