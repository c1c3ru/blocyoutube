import 'dart:html';
import 'cliente.dart';

class ClienteRepo {
  final List<Client> _clients = [];

  List<Client> loadClient() {
    _clients.addAll([
      Client(nome: 'jose armando'),
      Client(nome: 'anastácia silva'),
      Client(nome: 'marina silva'),
      Client(nome: 'bruno marcondes'),
    ]);
    return _clients;
  }

  List<Client> addClient(Client client) {
    _clients.add(client);
    return _clients;
  }

  List<Client> removeClient(Client client) {
    _clients.remove(client);
    return _clients;
  }
}
