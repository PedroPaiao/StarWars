class CharacterModel{
  String _name;
  String _height;
  String _mass;
  String _hairColor;
  String _skinColor;
  String _eyeColor;
  String _birthYear;
  String _gender;
  String _homeWord;
  List<String> _films;
  List<String> _species;
  List<String> _vehicles;
  List<String> _starships;

  CharacterModel(
      this._name,
      this._height,
      this._mass,
      this._hairColor,
      this._skinColor,
      this._eyeColor,
      this._birthYear,
      this._gender,
      this._homeWord,
      this._films,
      this._species,
      this._vehicles,
      this._starships,
      );

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['name'] = _name;
    map['height'] = _height;
    map['mass'] = _mass;
    map['hair_color'] = _hairColor;
    map['skin_color'] = _skinColor;
    map['eye_color'] = _eyeColor;
    map['birth_year'] = _birthYear;
    map['gender'] = _gender;
    map['homeword'] = _homeWord;
    map['films'] = _films;
    map['species'] = _species;
    map['vehicles'] = _vehicles;
    map['starships'] = _starships;
    return map;
  }
}