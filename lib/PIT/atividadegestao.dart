import 'package:flutter/material.dart';

class AtividadeGestao extends StatefulWidget {
  const AtividadeGestao({super.key});

  @override
  _AtividadeGestaoState createState() => _AtividadeGestaoState();
}

class _AtividadeGestaoState extends State<AtividadeGestao> {
  Map<int, int> activities = {};

  void updateTotal(int activityNumber, int value) {
    setState(() {
      activities[activityNumber] = value;
    });
  }

  int? calculateTotal(int activityNumber) {
    return activities.containsKey(activityNumber) ? activities[activityNumber] : 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(        appBar: AppBar(
          title: const Text('Management Activities'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'ATIVIDADES DE GESTÃO INSTITUCIONAL E ACADÊMICA',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              DataTable(
                columns: const [
                  DataColumn(
                    label: Text('Atividade'),
                  ),
                  DataColumn(
                    label: Text('Quantidade'),
                  ),
                  DataColumn(
                    label: Text('Total'),
                  ),
                ],
                rows: [
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Coordenador de Curso'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(30, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 1',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(30).toString(),
                          decoration: const InputDecoration(
                            labelText: 'Total',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Coordenador de Setor'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(31, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 1',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(31).toString(),
                          decoration: const InputDecoration(
                            labelText: 'Total',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Chefe de Departamento'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(32, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 1',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(32).toString(),
                          decoration: const InputDecoration(
                            labelText: 'Total',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Diretores de Área/Setor'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(33, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 1',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(33).toString(),
                          decoration: const InputDecoration(
                            labelText: 'Total',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Assessor da Reitoria'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(34, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 1',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(34).toString(),
                          decoration: const InputDecoration(
                            labelText: 'Total',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Coordenador de Implantação de Campus'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(35, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 1',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(35).toString(),
                          decoration: const InputDecoration(
                            labelText: 'Total',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Assistente de Pró-Reitoria ou Chefe de Gabinete de Campus'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(36, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 1',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(36).toString(),
                          decoration: const InputDecoration(
                            labelText: 'Total',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Coordenador de programa institucional: ensino, pesquisa aplicada ou extensão'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(37, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 1',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(37).toString(),
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
                'ATIVIDADES EM COMISSÕES OU DE FISCALIZAÇÃO',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              DataTable(
                columns: const [
                  DataColumn(
                    label: Text('Atividade'),
                  ),
                  DataColumn(
                    label: Text('Quantidade'),
                  ),
                  DataColumn(
                    label: Text('Total'),
                  ),
                ],
                rows: [
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Conselhos, comissões ou comitês permanentes institucionais'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(38, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 1',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(38).toString(),
                          decoration: const InputDecoration(
                            labelText: 'Total',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Comissão Própria de Avaliação e Comissão Permanente de Pessoal Docente (Central)'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(39, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 1',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(39).toString(),
                          decoration: const InputDecoration(
                            labelText: 'Total',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Comissão Própria de Avaliação e Comissão Permanente de Pessoal Docente (Local)'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(40, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 1',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(40).toString(),
                          decoration: const InputDecoration(
                            labelText: 'Total',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Conselhos ou comitês permanentes externos'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(41, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 1',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(41).toString(),
                          decoration: const InputDecoration(
                            labelText: 'Total',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Colegiado de Cursos'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(42, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 2',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(42).toString(),
                          decoration: const InputDecoration(
                            labelText: 'Total',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Núcleo Docente Estruturante (NDE)'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(43, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 2',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(43).toString(),
                          decoration: const InputDecoration(
                            labelText: 'Total',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Comissão de Processo Administrativo Disciplinar'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(44, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 1',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(44).toString(),
                          decoration: const InputDecoration(
                            labelText: 'Total',
                          ),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      const DataCell(
                        Text('Comissão de Ética'),
                      ),
                      DataCell(
                        TextFormField(
                          onChanged: (value) {
                            updateTotal(45, int.tryParse(value) ?? 0);
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Max: 1',
                          ),
                        ),
                      ),
                      DataCell(
                        TextFormField(
                          readOnly: true,
                          initialValue: calculateTotal(45).toString(),
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
      ),
    );
  }
}