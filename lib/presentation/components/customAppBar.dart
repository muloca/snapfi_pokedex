import 'package:flutter/material.dart';
import 'package:snapfi_test/external/api.dart';
import 'package:snapfi_test/models/pokemon_colors.dart';
import 'package:snapfi_test/utils/colors_convert.dart';

class CustomAppBar extends StatefulWidget {
  final int id;
  final String name;
  const CustomAppBar({super.key, required this.id, required this.name});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: PokeAPI.getPokemonColor(widget.id),
        builder: (BuildContext context, AsyncSnapshot<PokemonColors> snapshot) {
          if (snapshot.data == null) {
            return const SizedBox.shrink();
          }
          String colorname = snapshot.data!.color!.name.toString();
          Color pokeColor = stringToColor(colorname);
          return AppBar(
            backgroundColor: pokeColor,
            elevation: 0,
            centerTitle: false,
            title: Text(
              widget.name,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 30, top: 18),
                child: Text(
                  '#${widget.id.toString()}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          );
        });
  }
}
