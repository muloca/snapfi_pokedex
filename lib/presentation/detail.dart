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
        backgroundColor: Colors.green, // Colocar a cor do bicho
        elevation: 0,
        title: Text(
          arguments.name[0].toUpperCase() + arguments.name.substring(1),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 15),
            child: Text(
              '#${arguments.id.toString()}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 200,
                height: 200,
                child: DetailImage(image: arguments.image),
              ),
            ),
            DetailData(id: arguments.id),
          ],
        ),
      ),
    );
  }
}
