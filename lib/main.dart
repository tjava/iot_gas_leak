import 'package:gas_leak/layout.dart';
import 'package:gas_leak/providers/hardware_readings_provider.dart';
import 'package:gas_leak/providers/navigation_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:gas_leak/firebase_api.dart';
import 'package:gas_leak/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HardwareReadingsProvider>(
          create: (context) => HardwareReadingsProvider(),
        ),
        ChangeNotifierProvider<NavigationProvider>(
          create: (context) => NavigationProvider(),
        ),
      ],
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: Layout(),
      ),
    );
  }
}
