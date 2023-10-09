import 'package:flutter/material.dart';

class AtividadeManutencaoEnsino extends StatelessWidget {
  const AtividadeManutencaoEnsino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATIVIDADES DOCENTES',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ATIVIDADES DOCENTES'),
        ),
        body: Column(
          children: [
            const Text(
              'ATIVIDADES DE MANUTENÇÃO AO ENSINO (até 18 horas)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Table(
              children: [
                TableRow(
                  children: [
                    const TableCell(
                      child: Text(
                        'Preparação + Planejamento',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        readOnly: true,
                        decoration: const InputDecoration(
                          labelText: 'Total',
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const TableCell(
                      child: Text(
                        'Atendimento a Estudantes',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        readOnly: true,
                        decoration: const InputDecoration(
                          labelText: 'Total',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Text(
              'ATIVIDADES DE APOIO AO ENSINO (2 horas)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Table(
              children: [
                TableRow(
                  children: [
                    const TableCell(
                      child: Text(
                        'Participação nos encontros técnico-pedagógicos, reuniões com os diversos setores da gestão',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        readOnly: true,
                        decoration: const InputDecoration(
                          labelText: 'Total',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}