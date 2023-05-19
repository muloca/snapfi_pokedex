import 'package:flutter/material.dart';
import 'package:snapfi_test/components/detail_data.dart';
import 'package:snapfi_test/components/detail_image.dart';
import 'package:snapfi_test/models/pokemon_screen_data.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as PokemonScreenData;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text(
          arguments.name[0].toUpperCase() + arguments.name.substring(1),
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30, top: 18),
            child: Text(
              '#${arguments.id}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(top: 180, child: DetailData(id: arguments.id)),
          DetailImage(image: arguments.image),
        ],
      ),
    );
  }
}
