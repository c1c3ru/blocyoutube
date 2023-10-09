import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Orientacoes extends StatelessWidget {
  const Orientacoes({super.key});

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
                  'Orientações para preenchimento do Plano de Trabalho Docente (PIT):',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '1. A carga horária (C.H.) deve ser contabilizada em horas de 60 minutos;',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '2. A C.H deve constar o subtotal de horas obtidas para cada atividade registrada de acordo com o obtido na Tabela de Carga Horária docente;',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '3. Com exceção da carga horária de ensino dedicada a aulas (que serão acompanhadas através do sistema Acadêmico), todas as demais atividades deverão ser comprovadas através de documentos anexados a este PIT;',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '4. O PIT deve ser entregue às Direções ou Departamentos de Ensino em até trinta dias antes do início da elaboração dos calendários para o semestre subsequente;',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '5. No caso de não apresentação do PIT no prazo, subentende-se que o docente realiza exclusivamente atividades de ensino no IFCE;',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '6. As atividades de apoio ao ensino serão fixas em 2 (duas) horas já preenchidas no PIT;',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '7. Os projetos de pesquisa aplicada ou extensão deverão contemplar: contendo título de cada projeto a ser desenvolvido e, ainda, horário, carga horária, resumo da descrição de cada atividade do projeto, participantes, cronograma e resultados esperados, anexados na forma de documentos comprobatórios a este PIT;',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '8. O PIT deve ser preenchido respeitando os critérios estabelecidos na Resolução de Carga Horária Docente do IFCE.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    // Ação para o botão Preencher Relatório
                  },
                  child: const Text('Preencher Relatório'),
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