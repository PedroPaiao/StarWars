class SpecieModel {
  String _name;
  String _classification;
  String _designation;
  String _averageHeight;
  String _skinColors;
  String _hairColors;
  String _eyeColors;
  String _averageLifespan;
  String _homeworld;
  String _language;
  List<String> _people;
  List<String> _films;

  SpecieModel(
      this._name,
      this._classification,
      this._designation,
      this._averageHeight,
      this._skinColors,
      this._hairColors,
      this._eyeColors,
      this._averageLifespan,
      this._homeworld,
      this._language,
      this._people,
      this._films);

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['name'] = _name;
    map['classification'] = _classification;
    map['designation'] = _designation;
    map['average_height'] = _averageHeight;
    map['skin_colors'] = _skinColors;
    map['hair_colors'] = _hairColors;
    map['eye_colors'] = _eyeColors;
    map['average_lifespan'] = _averageLifespan;
    map['homeworld'] = _homeworld;
    map['language'] = _language;
    map['people'] = _people;
    map['films'] = _films;
    return map;
  }
}