import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AtividadePesquisa extends StatelessWidget {
  const AtividadePesquisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATIVIDADES DOCENTES',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ATIVIDADES DOCENTES'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'ATIVIDADES DE ENSINO EXTRACURRICULAR (até 25% do regime de trabalho)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Table(
                children: [
                  TableRow(
                    children: [
                      const TableCell(
                        child: Text(
                          'Responsável por Laboratório',
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
                          'Projetos ou atividades complementares de ensino extracurriculares',
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
              const SizedBox(height: 20),
              const Text(
                'ATIVIDADES DE PESQUISA APLICADA',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Table(
                children: [
                  TableRow(
                    children: [
                      const TableCell(
                        child: Text(
                          'Coordenação de projeto de pesquisa aplicada, desenvolvimento ou inovação cadastrado na PRPI com fomento IFCE ou sem recursos',
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
                          'Coordenação de projeto de pesquisa aplicada, desenvolvimento ou inovação cadastrado na PRPI com captação de recursos externos ao IFCE de agências oficiais de fomento e fundações de apoio a pesquisa',
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
                          'Participação na equipe de projeto de pesquisa aplicada, desenvolvimento ou inovação, cadastrado na PRPI',
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
                          'Orientação ou coorientação em cursos de especialização, mestrado ou doutorado, no IFCE ou em outra instituição de ensino superior com anuência do IFCE',
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
                          'Bolsista produtividade do IFCE ou agências oficiais de fomento',
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
                          'Participação em programa de pós-graduação, em nível de mestrado ou doutorado, como docente COLABORADOR (do IFCE ou outra IES com anuência do IFCE)',
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
                          'Participação em programa de pós-graduação, em nível de mestrado ou doutorado, como docente PERMANENTE (do IFCE ou outra IES com anuência do IFCE)',
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
                          'Coordenação ou participação em equipe de projeto de pesquisa aplicada, desenvolvimento ou inovação cadastrado na PRPI com fomento externo proveniente de parcerias ou convênios com empresas privadas',
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
                          'Líder de Grupo de Pesquisa devidamente homologado pela PRPI',
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
                          'Exercício da função de Editor(a)-chefe em periódico científico do IFCE',
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
                          'Revisor de Periódicos ou Eventos Científicos',
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
                          'Coordenação de comitê de ética em pesquisa do IFCE',
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
                          'Participação como membro relator de comitê de ética em pesquisa do IFCE',
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
      ),
    );
  }
}