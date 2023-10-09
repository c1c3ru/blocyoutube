import 'package:flutter_modular/flutter_modular.dart';
import 'package:granapages/pages/page_start.dart';
import 'package:granapages/pages/page_questions.dart';
import 'package:granapages/pages/page_about.dart';
import 'package:granapages/pages/level_page.dart';
import 'package:granapages/pages/page_shopping.dart';
import 'package:granapages/pages/page_not_found.dart';


class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => PageStart()),
    ChildRoute('/PageShopping', child: (context, args) => PageShopping(), transition: TransitionType.fadeIn),
    ChildRoute('/PageQuestions', child: (context, args) => PageQuestions(), transition: TransitionType.fadeIn),
    ChildRoute('/PageAbout', child: (context, args) => PageAbout(), transition: TransitionType.fadeIn),
    ChildRoute('/LevelPage', child: (context, args) => LevelPage(), transition: TransitionType.fadeIn),

    WildcardRoute(child: (context, args) => NotFoundPage()),

  ];
}
