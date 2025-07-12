import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('first page bar'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Text('yoo pedroo'),
    );
  }
}
