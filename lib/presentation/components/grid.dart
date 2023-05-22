import 'package:flutter/material.dart';
import 'package:snapfi_test/presentation/components/card.dart';
import 'package:snapfi_test/models/pokemon_model.dart';

class PokemonGrid extends StatefulWidget {
  final List<Pokemon> pokemon;
  const PokemonGrid({Key? key, required this.pokemon}) : super(key: key);

  @override
  _PokemonGridState createState() => _PokemonGridState();
}

class _PokemonGridState extends State<PokemonGrid> {
  @override
  Widget build(BuildContext context) {
    const crossAxisCount = 3;

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: -12.0,
              blurRadius: 12.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            padding: const EdgeInsets.all(7),
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            semanticChildCount: 250,
            childAspectRatio: 200 / 244,
            physics: const BouncingScrollPhysics(),
            children: widget.pokemon
                .map(
                  (pokemon) => PokemonCard(
                    id: pokemon.id,
                    name: pokemon.name,
                    image: pokemon.img,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
