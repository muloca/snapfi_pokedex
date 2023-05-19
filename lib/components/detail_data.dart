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
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.orange, // cor do bicho
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Teste',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              'About',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.monitor_weight_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text('8.5kg')
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Weight')
                    ],
                  ),
                  Container(
                    height: 70,
                    width: 1,
                    color: Colors.grey,
                  ),
                  const Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.height),
                          SizedBox(
                            width: 10,
                          ),
                          Text('0,6m')
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Height')
                    ],
                  ),
                  Container(
                    height: 70,
                    width: 1,
                    color: Colors.grey,
                  ),
                  const Column(
                    children: [
                      Row(
                        children: [Text('Mega-Punch')],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Moves')
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Base Stats',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'HP',
                style: TextStyle(
                  color: Colors.orange, // Colocar a vcor do bicho
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
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
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text('039'),
              ),
              const SizedBox(
                width: 300,
                child: LinearProgressIndicator(
                  value: 39 / 100,
                  color: Colors.orange,
                  backgroundColor: Colors.grey,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
