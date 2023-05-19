import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:snapfi_test/components/grid.dart';
import 'package:snapfi_test/external/api.dart';
import 'package:snapfi_test/models/pokemon_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Pokemon> pokemon = List.empty();

  @override
  void initState() {
    super.initState();
    getPokemonFromPokeApi();
  }

  void getPokemonFromPokeApi() async {
    PokeAPI.getPokemon().then((response) {
      List<Map<String, dynamic>> data = List.from(json.decode(response.body)['results']);
      setState(() {
        pokemon = data.asMap().entries.map<Pokemon>((element) {
          element.value['id'] = element.key + 1;
          element.value['img'] =
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${element.key + 1}.png";
          return Pokemon.fromJson(element.value);
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Image.asset(
              'assets/snapfi.png',
              color: Colors.white,
              width: 80,
            ),
          )
        ],
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              'assets/pokeball.png',
              color: Colors.white,
              width: 30,
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              "Pokédex",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
      body: Container(color: Colors.red, child: PokemonGrid(pokemon: pokemon)),
    );
  }
}
