import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('NotFoundPage')),
      body: const Center(
        child: Text('NotFoundPage'),

      ),
    );
  }
}