import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:starwars_revenge/ui/home_page.dart';

Response response;
List films = [];
List characters = [];
void main() async {
  try {
    response = await Dio().get("https://swapi.co/api/films");
    films = response.data['results'];
  } catch (e) {
    print(e);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StarWars Geek',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(films),
    );
  }
}
