import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AtividaDocente extends StatelessWidget {
  const AtividaDocente({Key? key}) : super(key: key);

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
              'Atividades de Ensino',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'AULAS EM FIC, TÉCNICO, ESPECIALIZAÇÃO TÉCNICA, GRADUAÇÃO E PÓS-GRADUAÇÃO',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Table(
              children: [
                TableRow(
                  children: [
                    const TableCell(
                      child: Text(
                        'Cursos Técnico e/ou Licenciaturas, com base na lei 11.892 de 29 de dezembro de 2008 (mínimo de 6 horas)',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        // onChanged: (value) => dados(1),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                          hintText: 'Max: 20',
                        ),
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
                        'Cursos de Especialização Técnica, Graduação e Pós-graduação (lato sensu e stricto sensu)',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        // onChanged: (value) => dados(2),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                          hintText: 'Max: 20',
                        ),
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
                        'Cursos FIC (Observar o Art.7, §4º regulamentação da carga horária)',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        // onChanged: (value) => dados(3),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                          hintText: 'Max: 400',
                        ),
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