import 'package:flutter/material.dart';

class PokemonCardData extends StatelessWidget {
  final int id;
  final String image;
  final String name;
  const PokemonCardData({
    Key? key,
    required this.id,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              '#${id.toString()}',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700,
              ),
            ),
          ),
        ),
        Expanded(
          child: Image.network(
            image,
            fit: BoxFit.contain,
            alignment: Alignment.bottomRight,
          ),
        ),
        Text(
          "${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
