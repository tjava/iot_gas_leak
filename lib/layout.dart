import 'package:flutter/material.dart';
import 'package:gas_leak/pages/home_page.dart';
import 'package:gas_leak/providers/navigation_provider.dart';
import 'package:gas_leak/pages/about_page.dart';
import 'package:provider/provider.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  static const screens = <Widget>[
    HomePage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[context.watch<NavigationProvider>().state.index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: context.read<NavigationProvider>().state.index,
          onTap: (int index) async {
            context.read<NavigationProvider>().navigate(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About',
            ),
          ],
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
