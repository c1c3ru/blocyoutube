// ignore_for_file: unused_import

import 'dart:async';

import 'package:blocestudo/bloc/clientevents.dart';
import 'package:blocestudo/bloc/clientstate.dart';
import 'package:blocestudo/cliente.dart';
import 'package:blocestudo/clientrepo.dart';

class ClientBloc {
  final _clientRepos = ClienteRepo();

  final StreamController<ClientEvents> _inputClientController =
      StreamController<ClientEvents>();
  final StreamController<ClientState> _outputClientController =
      StreamController<ClientState>();

  Sink<ClientEvents> get InputClient => _inputClientController.sink;
  Sink<ClientState> get Stream => _outputClientController.sink;

  ClientBloc() {
    _inputClientController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(ClientEvents events) {
    List<Client> clients = [];

    _mapEventToState(ClientEvents event) {
      List<Client> clients = [];
      if (event is LoadClientEvent) {
        clients = _clientRepos.loadClient();
      } else if (event is AddClientEvent) {
        clients = _clientRepos.addClient(event.client);
      } else if (event is RemoveClientEvent) {
        clients = _clientRepos.removeClient(event.client);
      }
      _outputClientController.add(ClientSucessState(clients: clients));
    }
  }
}
