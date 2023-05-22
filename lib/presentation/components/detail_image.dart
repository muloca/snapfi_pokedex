import 'package:flutter/material.dart';
import 'package:snapfi_test/external/api.dart';
import 'package:snapfi_test/models/pokemon_colors.dart';
import 'package:snapfi_test/utils/colors_convert.dart';

class DetailImage extends StatelessWidget {
  final String image;
  final int id;
  const DetailImage({Key? key, required this.image, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: PokeAPI.getPokemonColor(id),
        builder: (BuildContext context, AsyncSnapshot<PokemonColors> snapshot) {
          if (snapshot.data == null) {
            return const SizedBox.shrink();
          }
          String colorname = snapshot.data!.color!.name.toString();
          Color pokeColor = stringToColor(colorname);
          return Stack(
            children: [
              Container(
                height: 220,
                color: pokeColor,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                    image,
                    alignment: Alignment.center,
                    height: 250,
                  ),
                ),
              ),
            ],
          );
        });
  }
}
