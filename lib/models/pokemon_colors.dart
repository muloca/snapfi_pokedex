class PokemonColors {
  PokemonColor? color;

  PokemonColors({this.color});

  PokemonColors.fromJson(Map<String, dynamic> json) {
    color = json['color'] != null ? PokemonColor.fromJson(json['color']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (color != null) {
      data['color'] = color!.toJson();
    }
    return data;
  }
}

class PokemonColor {
  String? name;
  String? url;

  PokemonColor({this.name, this.url});

  PokemonColor.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}
