import 'package:flutter/material.dart';
import 'package:gas_leak/providers/hardware_readings_provider.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'LPG Readings: ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Consumer<HardwareReadingsProvider>(
              builder: (context, hardwareReadingsProvider, _) {
                return Text(
                  hardwareReadingsProvider.state.hardwareReadings.lpg,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Temperature: ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Consumer<HardwareReadingsProvider>(
              builder: (context, hardwareReadingsProvider, _) {
                return Text(
                  hardwareReadingsProvider.state.hardwareReadings.temp,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 30),
        Consumer<HardwareReadingsProvider>(builder: (context, hardwareReadingsProvider, _) {
          return ClipOval(
            child: Container(
              width: 350,
              height: 80,
              color: hardwareReadingsProvider.state.connection ? Colors.purple : Colors.red,
              child: Center(
                child: Text(
                  hardwareReadingsProvider.state.connection ? 'Connected' : 'No Connection',
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        }),
        const SizedBox(height: 30),
        Container(
          height: 100,
          width: 350,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black.withOpacity(0.5),
              width: 2.0,
            ),
          ),
          child: const Column(
            children: <Widget>[
              Text(
                'Threshold Settings',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'LPG Threshold: ',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  Text(
                    '123.123',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Temperature Threshold: ',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  Text(
                    '23.23',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
