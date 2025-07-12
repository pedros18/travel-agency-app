import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second page bar'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Text('yoo pedroo'),
    );
  }
}
