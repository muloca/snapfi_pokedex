import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  final int id;
  const DetailData({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: MediaQuery.of(context).size.height,
      ),
      decoration: const BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Text('teste')
        ],
      ),
    );
  }
}
