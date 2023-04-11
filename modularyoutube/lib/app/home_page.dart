import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modularyoutube/app/app_module.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Página principal')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Modular.to.navigate('/second'),
          child: const Text('Ir para a página 02'),
        ),
      ),
    );
  }
}