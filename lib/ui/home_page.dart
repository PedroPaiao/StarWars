import 'package:flutter/material.dart';
import 'package:starwars_revenge/models/film_model.dart';

class HomePage extends StatefulWidget {
  List batatinha;

  HomePage(
    this.batatinha,
  );

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          centerTitle: true,
          title: Text('Filmes'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: widget.batatinha.map((item) {
              return FilmModel(item);
            }).toList(), //Vetor de filhos
          ),
        ));
  }
}
