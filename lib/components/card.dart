import 'package:flutter/material.dart';
import 'package:snapfi_test/components/card_data.dart';
import 'package:snapfi_test/models/pokemon_screen_data.dart';

class PokemonCard extends StatelessWidget {
  final int id;
  final String name;
  final String image;

  const PokemonCard({
    Key? key,
    required this.id,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => {
          Navigator.pushNamed(
            context,
            "/details",
            arguments: PokemonScreenData(id, name, image),
          )
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.grey.withOpacity(0.9),
                  Colors.white,
                  Colors.white,
                ],
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.5,
                  blurRadius: 5.0,
                ),
              ],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                PokemonCardData(name: name, image: image, id: id),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
