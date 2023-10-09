import 'package:flutter/material.dart';
class AtividadeExtensao extends StatelessWidget {
  const AtividadeExtensao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Extension Activities'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Table(
              border: TableBorder.all(),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: const {
                0: FlexColumnWidth(5),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(2),
              },
              children: [
                TableRow(
                  children: [
                    const TableCell(
                      child: Text(
                        'Coordenação de projeto/programa de extensão cadastrado na PROEXT com fomento IFCE ou sem recursos',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        // onChanged: (value) {
                        //   updateTotal(21, int.tryParse(value) ?? 0);
                        // },
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Max: 3',
                        ),
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        readOnly: true,
                        // initialValue: calculateTotal(21).toString(),
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
                        'Coordenação de projeto/programa de extensão cadastrado na PROEXT com captação de recursos externos ao IFCE',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        // onChanged: (value) {
                        //   updateTotal(22, int.tryParse(value) ?? 0);
                        // },
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Max: 2',
                        ),
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        readOnly: true,
                        // initialValue: calculateTotal(22).toString(),
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
                        'Participação na equipe de projeto ou programa de extensão, cadastrado na PROEXT, exceto aula FIC',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        // onChanged: (value) {
                        //   updateTotal(23, int.tryParse(value) ?? 0);
                        // },
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Max: 2',
                        ),
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        readOnly: true,
                        // initialValue: calculateTotal(23).toString(),
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
                        'Coordenação de incubadoras de empresas',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        // onChanged: (value) {
                        //   updateTotal(24, int.tryParse(value) ?? 0);
                        // },
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Max: 1',
                        ),
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        readOnly: true,
                        // initialValue: calculateTotal(24).toString(),
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
                        'Coordenação dos NAPNEs ou NEABIs',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        // onChanged: (value) {
                        //   updateTotal(25, int.tryParse(value) ?? 0);
                        // },
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Max: 1',
                        ),
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        readOnly: true,
                        // initialValue: calculateTotal(25).toString(),
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
                        'Participação em NAPNEs ou NEABIs',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        // onChanged: (value) {
                        //   updateTotal(26, int.tryParse(value) ?? 0);
                        // },
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Max: 1',
                        ),
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        readOnly: true,
                        // initialValue: calculateTotal(26).toString(),
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
                        'Cursos FIC (quantidade de horas por curso)',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        // onChanged: (value) {
                        //   updateTotal(27, int.tryParse(value) ?? 0);
                        // },
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Max: 240',
                        ),
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        readOnly: true,
                        // initialValue: calculateTotal(27).toString(),
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
                        'Preparação + Planejamento dos cursos FIC',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        // onChanged: (value) {
                        //   updateTotal(28, int.tryParse(value) ?? 0);
                        // },
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Max: 120',
                        ),
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        readOnly: true,
                        // initialValue: calculateTotal(28).toString(),
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
                        'Planejamento e organização de eventos de extensão',
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        // onChanged: (value) {
                        //   updateTotal(29, int.tryParse(value) ?? 0);
                        // },
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Max: 2',
                        ),
                      ),
                    ),
                    TableCell(
                      child: TextFormField(
                        readOnly: true,
                        // initialValue: calculateTotal(29).toString(),
                        decoration: const InputDecoration(
                          labelText: 'Total',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
