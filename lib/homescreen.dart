import 'package:flutter/material.dart';
import 'package:flutter_drawer/app-drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: const AppDrawer(),
      body: const Center(
        child: Text('Swipe from left or tap menu icon to open drawer'),
      ),
    );
  }
}
