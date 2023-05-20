import 'package:flutter/material.dart';

class BaseStatsParams extends StatelessWidget {
  final String param;
  final double value;
  final double percent;
  const BaseStatsParams({
    super.key,
    required this.param,
    required this.value,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 52,
          child: Text(
            param,
            style: const TextStyle(
              color: Colors.orange, // Colocar a vcor do bicho
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 20,
            width: 1,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(value.toString()),
        ),
        SizedBox(
          width: 300,
          child: LinearProgressIndicator(
            value: percent / 100,
            color: Colors.orange,
            backgroundColor: Colors.grey,
          ),
        )
      ],
    );
  }
}
