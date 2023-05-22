import 'package:snapfi_test/models/abilities.dart';
import 'package:snapfi_test/models/stats.dart';
import 'package:snapfi_test/models/types.dart';

class PokerAPIv2 {
  List<Abilities>? abilities;
  int? baseExperience;
  int? height;
  String? name;
  List<Stats>? stats;
  List<Types>? types;
  int? weight;

  PokerAPIv2({this.abilities, this.baseExperience, this.height, this.name, this.stats, this.weight, this.types});

  factory PokerAPIv2.emptyData() {
    return PokerAPIv2(abilities: [], baseExperience: 0, height: 0, name: '', stats: [], weight: 0, types: []);
  }
  PokerAPIv2.fromJson(Map<String, dynamic> json) {
    if (json['abilities'] != null) {
      abilities = <Abilities>[];
      json['abilities'].forEach((v) {
        abilities!.add(Abilities.fromJson(v));
      });
    }
    if (json['types'] != null) {
      types = <Types>[];
      json['types'].forEach((v) {
        types!.add(Types.fromJson(v));
      });
    }
    baseExperience = json['base_experience'];
    height = json['height'];
    name = json['name'];
    if (json['stats'] != null) {
      stats = <Stats>[];
      json['stats'].forEach((v) {
        stats!.add(Stats.fromJson(v));
      });
    }

    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (abilities != null) {
      data['abilities'] = abilities!.map((v) => v.toJson()).toList();
    }
    if (types != null) {
      data['types'] = types!.map((v) => v.toJson()).toList();
    }
    data['base_experience'] = baseExperience;
    data['height'] = height;
    data['name'] = name;
    if (stats != null) {
      data['stats'] = stats!.map((v) => v.toJson()).toList();
    }
    if (types != null) {
      data['types'] = types!.map((v) => v.toJson()).toList();
    }
    data['weight'] = weight;
    return data;
  }
}
