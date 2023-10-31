import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CargaHoraria extends StatelessWidget {
  const CargaHoraria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carga Horária Docente',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Carga Horária Docente'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                child: const Text(
                  'Carga Horária Docente',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Ação para o botão Plano de Trabalho Docente
                      },
                      child: const Text('Plano de Trabalho Docente'),
                    ),
                    const SizedBox(width: 12.0),
                    ElevatedButton(
                      onPressed: () {
                        // Ação para o botão Relatório Individual de Trabalho
                      },
                      child: const Text('Relatório Individual de Trabalho'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 32.0),
                alignment: Alignment.center,
                child: const Text(
                  'DEPPI - Departamento de Extensão, Pesquisa, Pós-Graduação e Inovação',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}