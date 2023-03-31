import 'package:flutter_modular/flutter_modular.dart';

import 'counter_controller.dart';
import 'counter_page.dart';
import 'counter_store.dart';

class CounterModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CounterStore()),
    Bind.factory((i) => CounterController(i.get<CounterStore>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => CounterPage()),
  ];
}
