import 'package:flutter/material.dart';
import 'package:gas_leak/widgets/body.dart';
import 'package:gas_leak/widgets/head.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Head(),
            Body(),
          ],
        ),
      ),
    );
  }
}
