import 'package:flutter/material.dart';

class JanelaModal extends StatelessWidget {
  const JanelaModal({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Horários da Semana'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Table(
              children: [
                const TableRow(
                  children: [
                    TableCell(child: Text('')),
                    TableCell(child: Text('Segunda')),
                    TableCell(child: Text('Terça')),
                    TableCell(child: Text('Quarta')),
                    TableCell(child: Text('Quinta')),
                    TableCell(child: Text('Sexta')),
                  ],
                ),
                TableRow(
                  children: [
                    const TableCell(child: Text('Manhã')),
                    TableCell(child: TextFormField(
                      readOnly: true,
                      decoration: const InputDecoration(
                        hintText: 'Clique para selecionar',
                        border: OutlineInputBorder(),
                      ),
                      onTap: () => selecao(1),
                    )),
                    TableCell(child: TextFormField(
                      readOnly: true,
                      decoration: const InputDecoration(
                        hintText: 'Clique para selecionar',
                        border: OutlineInputBorder(),
                      ),
                      onTap: () => selecao(2),
                    )),
                    TableCell(child: TextFormField(
                      readOnly: true,
                      decoration: const InputDecoration(
                        hintText: 'Clique para selecionar',
                        border: OutlineInputBorder(),
                      ),
                      onTap: () => selecao(3),
                    )),
                    TableCell(child: TextFormField(
                      readOnly: true,
                      decoration: const InputDecoration(
                        hintText: 'Clique para selecionar',
                        border: OutlineInputBorder(),
                      ),
                      onTap: () => selecao(4),
                    )),
                    TableCell(child: TextFormField(
                      readOnly: true,
                      decoration: const InputDecoration(
                        hintText: 'Clique para selecionar',
                        border: OutlineInputBorder(),
                      ),
                      onTap: () => selecao(5),
                    )),
                  ],
                ),
                // Repita as linhas de tabela restantes aqui...
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: DropdownButtonFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    items: [],
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    onPressed: selecaoMultipla,
                    child: const Text('Carregar valor nos campos selecionados'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Fechar'),
        ),
      ],
    );
  }

  void selecao(int index) {
    // Implemente a lógica para seleção do campo
  }

  void selecaoMultipla() {
    // Implemente a lógica para seleção múltipla
  }
}
