import 'package:flutter/material.dart';
import 'package:gas_leak/widgets/pic.dart';

class Head extends StatelessWidget {
  const Head({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.purple,
      child: const Column(
        children: <Widget>[
          SizedBox(height: 5),
          Text(
            'Arduino Based IoT',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'Security System',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Pic(),
              Column(
                children: <Widget>[
                  Text(
                    'Supervised by',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Engr. Mahmud Ja'afar",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
