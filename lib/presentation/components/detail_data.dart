import 'package:flutter/material.dart';
import 'package:snapfi_test/external/api.dart';
import 'package:snapfi_test/models/pokemon_colors.dart';
import 'package:snapfi_test/presentation/components/base_stats_params.dart';
import 'package:snapfi_test/models/poke_api_v2_model.dart';
import 'package:snapfi_test/utils/colors_convert.dart';

class DetailData extends StatelessWidget {
  final PokerAPIv2 pokemon;
  final int id;
  const DetailData({Key? key, required this.pokemon, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: PokeAPI.getPokemonColor(id),
        builder: (BuildContext context, AsyncSnapshot<PokemonColors> snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          }
          String colorname = snapshot.data!.color!.name.toString();
          Color pokeColor = stringToColor(colorname);
          return Container(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                ),
                Row(
                  children: [
                    pokemon.types![0].type!.name != null
                        ? Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: pokeColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                pokemon.types![0].type!.name.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                    const SizedBox(
                      width: 10,
                    ),
                    if (pokemon.types!.length >= 2)
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: pokeColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            pokemon.types![1].type!.name.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'About',
                    style: TextStyle(
                      color: pokeColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.monitor_weight_outlined),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text('${(pokemon.weight! / 10).toString()} kg')
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text('Weight')
                          ],
                        ),
                        Container(
                          height: 70,
                          width: 1,
                          color: Colors.grey,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.height),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text('${(pokemon.height! / 10).toString()} m')
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text('Height')
                          ],
                        ),
                        Container(
                          height: 70,
                          width: 1,
                          color: Colors.grey,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [Text(pokemon.abilities![0].ability!.name.toString())],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text('Moves')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Base Stats',
                    style: TextStyle(
                      color: pokeColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                BaseStatsParams(
                  color: pokeColor,
                  param: 'HQ',
                  value: pokemon.stats![0].baseStat!.toDouble(),
                  percent: pokemon.stats![0].baseStat!.toDouble(),
                ),
                BaseStatsParams(
                  color: pokeColor,
                  param: 'ATK',
                  value: pokemon.stats![1].baseStat!.toDouble(),
                  percent: pokemon.stats![1].baseStat!.toDouble(),
                ),
                BaseStatsParams(
                  color: pokeColor,
                  param: 'DEF',
                  value: pokemon.stats![2].baseStat!.toDouble(),
                  percent: pokemon.stats![2].baseStat!.toDouble(),
                ),
                BaseStatsParams(
                  color: pokeColor,
                  param: 'SATK',
                  value: pokemon.stats![3].baseStat!.toDouble(),
                  percent: pokemon.stats![3].baseStat!.toDouble(),
                ),
                BaseStatsParams(
                  color: pokeColor,
                  param: 'SDEF',
                  value: pokemon.stats![4].baseStat!.toDouble(),
                  percent: pokemon.stats![4].baseStat!.toDouble(),
                ),
                BaseStatsParams(
                  color: pokeColor,
                  param: 'SPD',
                  value: pokemon.stats![5].baseStat!.toDouble(),
                  percent: pokemon.stats![5].baseStat!.toDouble(),
                ),
              ],
            ),
          );
        });
  }
}
