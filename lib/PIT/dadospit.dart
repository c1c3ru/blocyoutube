import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dados extends StatelessWidget {
  const Dados({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Relatório PIT',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Relatório PIT'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                alignment: Alignment.center,
                child: const Text(
                  'PLANO DE TRABALHO DOCENTE (PIT)',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Referente ao Semestre Letivo:',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'xxxx.x',
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'IDENTIFICAÇÃO DO SERVIDOR',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      const Text('Nome:'),
                      TextFormField(),
                      const SizedBox(height: 16.0),
                      const Text('Matrícula SIAPE:'),
                      TextFormField(),
                      const SizedBox(height: 16.0),
                      const Text('Curso ou Departamento:'),
                      TextFormField(),
                      const SizedBox(height: 16.0),
                      const Text('Campus:'),
                      TextFormField(
                        initialValue: 'Maracanaú',
                      ),
                      const SizedBox(height: 16.0),
                      const Text('Fone:'),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        inputFormatters: const [
                          // Add phone number mask here if needed
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      const Text('Email:'),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 16.0),
                      const Text('Tipo de vínculo:'),
                      DropdownButtonFormField(
                        items: const [
                          DropdownMenuItem(
                            value: 'Efetivo',
                            child: Text('Efetivo'),
                          ),
                          DropdownMenuItem(
                            value: 'Substituto',
                            child: Text('Substituto'),
                          ),
                          DropdownMenuItem(
                            value: 'Temporário',
                            child: Text('Temporário'),
                          ),
                          DropdownMenuItem(
                            value: 'Colaboração Técnica',
                            child: Text('Colaboração Técnica'),
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                      const SizedBox(height: 16.0),
                      const Text('Regime de Trabalho:'),
                      DropdownButtonFormField(
                        items: const [
                          DropdownMenuItem(
                            value: '40h D.E.',
                            child: Text('40h D.E.'),
                          ),
                          DropdownMenuItem(
                            value: '40h',
                            child: Text('40h'),
                          ),
                          DropdownMenuItem(
                            value: '20h',
                            child: Text('20h'),
                          ),
                        ],
                        onChanged: (value) {
                          // Call a function to handle the change
                          // and update the UI if needed
                        },
                      ),
                      const SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          // Action for the submit button
                        },
                        child: const Text('Submit'),
                      ),
                    ],
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