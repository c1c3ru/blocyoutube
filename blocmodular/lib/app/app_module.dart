import 'package:flutter_modular/flutter_modular.dart';

import 'modules/counter/counter_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/startpage/', module: CounterModule()),
  ];
}
