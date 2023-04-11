import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';
import 'second_page.dart';
import 'not_found_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => HomePage()),
    ChildRoute('/second', child: (context, args) => SecondPage(), transition: TransitionType.fadeIn),
    WildcardRoute(child: (context, args) => NotFoundPage()),

  ];
}


