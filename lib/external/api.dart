import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:snapfi_test/models/poke_api_v2_model.dart';
import 'package:snapfi_test/models/pokemon_colors.dart';

class PokeAPI {
  static Future<http.Response> getPokemons() => http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=1000"));
  static Future<PokerAPIv2> getPokemon(int id) async {
    final apiUrl = "https://pokeapi.co/api/v2/pokemon/$id";

    final response = await http.get(Uri.parse(apiUrl));
    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return PokerAPIv2.fromJson(data);
    } else {
      print('Erro ao buscar locais próximos');
      return PokerAPIv2.emptyData();
    }
  }

  static Future<PokemonColors> getPokemonColor(int id) async {
    final apiUrl = "https://pokeapi.co/api/v2/pokemon-species/$id";

    final response = await http.get(Uri.parse(apiUrl));
    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return PokemonColors.fromJson(data);
    } else {
      print('Erro ao buscar locais próximos');
      return PokemonColors.fromJson(data);
    }
  }
}
