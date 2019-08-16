class VehicleModels {
  String _cargoCapacity;
  String _consumables;
  String _costInCredits;
  String _created;
  String _crew;
  String _edited;
  String _length;
  String _manufacturer;
  String _maxAtmospheringSpeed;
  String _model;
  String _name;
  String _passagers;
  List<String> _pilots;
  List<String> _films;

  VehicleModels(
    this._cargoCapacity,
    this._consumables,
    this._costInCredits,
    this._created,
    this._crew,
    this._edited,
    this._length,
    this._manufacturer,
    this._maxAtmospheringSpeed,
    this._model,
    this._name,
    this._passagers,
    this._pilots,
    this._films,
  );

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['cargo_capacity'] = _cargoCapacity;
    map['consumables'] = _consumables;
    map['cost_in_credits'] = _costInCredits;
    map['created'] = _created;
    map['crew'] = _crew;
    map['edited'] = _edited;
    map['length'] = _length;
    map['manufacture'] = _manufacturer;
    map['max_atmosphering_speed'] = _maxAtmospheringSpeed;
    map['model'] = _model;
    map['name'] = _name;
    map['passagers'] = _passagers;
    map['pilots'] = _pilots;
    map['films'] = _films;
    return map;
  }
}
