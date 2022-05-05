import 'package:flutter/material.dart';

// Home screen.
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.access_alarms),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: const Text("App"),
        actions: [
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Open User screen',
            onPressed: () {
              Navigator.pushNamed(context, 'user');
              // handle the press
            },
          ),
        ],
      ),
      body: const Center(
        child: Text("Hi from home screen"),
      ),
    );
  }
}
