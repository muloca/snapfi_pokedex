import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  final String image;
  const DetailImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        image,
        alignment: Alignment.center,
      ),
    );
  }
}
