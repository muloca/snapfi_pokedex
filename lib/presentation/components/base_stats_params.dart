import 'package:flutter/material.dart';

class BaseStatsParams extends StatelessWidget {
  final String param;
  final double value;
  final double percent;
  final Color color;
  const BaseStatsParams({
    super.key,
    required this.param,
    required this.value,
    required this.percent,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 55,
          child: Text(
            param,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 20,
            width: 2,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          width: 55,
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(value.toString()),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.60,
          child: LinearProgressIndicator(
            value: percent / 100,
            color: color,
            backgroundColor: Colors.grey,
          ),
        )
      ],
    );
  }
}
