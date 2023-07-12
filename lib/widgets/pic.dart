import 'package:flutter/material.dart';

class Pic extends StatelessWidget {
  const Pic({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 50,
      child: Column(
        children: <Widget>[
          const Text(
            'Developed by',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          ClipOval(
            child: Image.asset(
              'assets/images/pic.jpg',
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            // height: 20,
            padding: const EdgeInsets.only(right: 15, left: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              children: <Widget>[
                Text(
                  'Adesina Emmanuel Shola',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '2018/2/00194EE',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
