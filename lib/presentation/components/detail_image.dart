import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  final String image;
  const DetailImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 220,
          color: Colors.red, // cor do bicho
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
  }
}