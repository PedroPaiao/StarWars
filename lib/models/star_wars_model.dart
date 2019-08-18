import 'package:dio/dio.dart';
import 'package:scoped_model/scoped_model.dart';

class StarWarsModel extends Model {
  static final filmsLink = 'https://swapi.co/api/films';
  static final Dio dio = Dio();
  List films;
  Response _response;
  bool isLoading = false;
  bool bankLoaded = false;
  bool bankLoading = false;

  void initBank() async {
    bankLoading = true;
    bankLoaded = true;
    notifyListeners();

    _response = await dio.get(filmsLink);
    films = _response.data['results'];

    bankLoading = false;
    notifyListeners();
  }

  void chargeEverything(int index) async {
    isLoading = true;
    notifyListeners();

    List _characters = [];
    try {
      for (String link in films[index]['characters']) {
        _response = await Dio().get(link);
        _characters.add(_response.data);
      }
      films[index]['characters'] = _characters;
    } catch (e) {
      print(e);
    }

    List _planets = [];
    try {
      for (String link in films[index]['planets']) {
        _response = await Dio().get(link);
        _planets.add(_response.data);
      }
      films[index]['planets'] = _planets;
    } catch (e) {
      print(e);
    }

    List _starships = [];
    try {
      for (String link in films[index]['starships']) {
        _response = await Dio().get(link);
        _starships.add(_response.data);
      }
      films[index]['starships'] = _starships;
    } catch (e) {
      print(e);
    }

    List _vehicles = [];
    try {
      for (String link in films[index]['vehicles']) {
        _response = await Dio().get(link);
        _vehicles.add(_response.data);
      }
      films[index]['vehicles'] = _vehicles;
    } catch (e) {
      print(e);
    }

    List _species = [];
    try {
      for (String link in films[index]['species']) {
        _response = await Dio().get(link);
        _species.add(_response.data);
      }
      films[index]['species'] = _species;
    } catch (e) {
      print(e);
    }
    isLoading = false;
    notifyListeners();
  }
}