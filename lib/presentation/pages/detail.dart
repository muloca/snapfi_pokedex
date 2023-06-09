import 'package:flutter/material.dart';
import 'package:snapfi_test/external/api.dart';
import 'package:snapfi_test/presentation/components/customAppBar.dart';
import 'package:snapfi_test/models/poke_api_v2_model.dart';
import 'package:snapfi_test/models/pokemon_screen_data.dart';
import 'package:snapfi_test/presentation/components/detail_data.dart';
import 'package:snapfi_test/presentation/components/detail_image.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<PokerAPIv2> pokemon = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as PokemonScreenData;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60), child: CustomAppBar(id: arguments.id, name: arguments.name)),
      body: FutureBuilder<PokerAPIv2>(
          future: PokeAPI.getPokemon(arguments.id),
          builder: (BuildContext context, AsyncSnapshot<PokerAPIv2> snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            }
            return Stack(
              children: [
                Positioned(
                  top: 100,
                  child: DetailData(
                    pokemon: snapshot.data!,
                    id: arguments.id,
                  ),
                ),
                DetailImage(
                  image: arguments.image,
                  id: arguments.id,
                ),
              ],
            );
          }),
    );
  }
}
