class PlanetModel{
  String _name;
  String _rotationPeriod;
  String _orbitalPeriod;
  String _diameter;
  String _climate;
  String _gravity;
  List<String> _residents;
  List<String> _films;

  PlanetModel(
      this._name,
      this._rotationPeriod,
      this._orbitalPeriod,
      this._diameter,
      this._climate,
      this._gravity,
      this._residents,
      this._films,
      );

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['name'] = _name;
    map['rotation_period'] = _rotationPeriod;
    map['orbital_period'] = _orbitalPeriod;
    map['diamete'] = _diameter;
    map['climate'] = _climate;
    map['gravity'] = _gravity;
    map['residents'] = _residents;
    map['films'] = _films;
    return map;
  }
}