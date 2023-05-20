import 'package:flutter/material.dart';
import 'package:snapfi_test/components/base_stats_params.dart';
import 'package:snapfi_test/models/poke_api_v2_model.dart';

class DetailData extends StatelessWidget {
  final PokerAPIv2 pokemon;
  const DetailData({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.orange, // cor do bicho
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Fire',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              'About',
              style: TextStyle(
                color: Colors.orange,
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
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              'Base Stats',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          BaseStatsParams(
            param: 'HQ',
            value: pokemon.stats![0].baseStat!.toDouble(),
            percent: pokemon.stats![0].baseStat!.toDouble(),
          ),
          BaseStatsParams(
            param: 'ATK',
            value: pokemon.stats![1].baseStat!.toDouble(),
            percent: pokemon.stats![1].baseStat!.toDouble(),
          ),
          BaseStatsParams(
            param: 'DEF',
            value: pokemon.stats![2].baseStat!.toDouble(),
            percent: pokemon.stats![2].baseStat!.toDouble(),
          ),
          BaseStatsParams(
            param: 'SATK',
            value: pokemon.stats![3].baseStat!.toDouble(),
            percent: pokemon.stats![3].baseStat!.toDouble(),
          ),
          BaseStatsParams(
            param: 'SDEF',
            value: pokemon.stats![4].baseStat!.toDouble(),
            percent: pokemon.stats![4].baseStat!.toDouble(),
          ),
          BaseStatsParams(
            param: 'SPD',
            value: pokemon.stats![5].baseStat!.toDouble(),
            percent: pokemon.stats![5].baseStat!.toDouble(),
          ),
        ],
      ),
    );
  }
}
