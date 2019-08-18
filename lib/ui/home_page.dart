import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:starwars_revenge/models/film_model.dart';
import 'package:starwars_revenge/models/star_wars_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Image.asset('assets/logo.png', fit: BoxFit.cover),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/back.jpg'), fit: BoxFit.cover),
        ),
        child: ScopedModelDescendant<StarWarsModel>(
          builder: (context, child, model) {
            if (!model.bankLoaded) {
              model.initBank();
            }
            return model.bankLoading
                ? Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: model.films.map((item) {
                  return FilmModel(item);
                }).toList(), //Vetor de filhos
              ),
            );
          },
        ),
      ),
    );
  }
}
