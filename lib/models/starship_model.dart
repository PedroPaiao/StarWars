class StarshipsModel {
  String _name;
  String _model;
  String _manufacturer;
  String _costInCredits;
  String _length;
  String _maxAtmospheringSpeed;
  String _crew;
  String _passengers;
  String _cargoCapacity;
  String _consumables;
  String _hyperdriveRating;
  String _mglt;
  String _starshipClass;
  List<String> _pilots;
  List<String> _films;

  StarshipsModel(
      this._name,
      this._model,
      this._manufacturer,
      this._costInCredits,
      this._length,
      this._maxAtmospheringSpeed,
      this._crew,
      this._passengers,
      this._cargoCapacity,
      this._consumables,
      this._hyperdriveRating,
      this._mglt,
      this._starshipClass,
      this._pilots,
      this._films);

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['name'] = _name;
    map['model'] = _model;
    map['manufacturer'] = _manufacturer;
    map['cost_in_credits'] = _costInCredits;
    map['_length'] = _length;
    map['max_atmosphering_speed'] = _maxAtmospheringSpeed;
    map['crew'] = _crew;
    map['passengers'] = _passengers;
    map['cargo_capacity'] = _cargoCapacity;
    map['_consumables'] = _consumables;
    map['hyperdrive_rating'] = _hyperdriveRating;
    map['MGLT'] = _mglt;
    map['starship_class'] = _starshipClass;
    map['pilots'] = _pilots;
    map['films'] = _films;
    return map;
  }
}
