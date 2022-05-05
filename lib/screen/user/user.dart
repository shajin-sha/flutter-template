import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.fingerprint_outlined),
      ),
      appBar: AppBar(
        title: const Text("User"),
      ),
      body: const Center(
        child: Text("hello"),
      ),
    );
  }
}
