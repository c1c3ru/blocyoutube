import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:granapages/nav/grana_module.dart';

// import 'package:granapages/pages/page_about.dart';
// import 'package:granapages/pages/page_shopping.dart';
// import 'package:granapages/pages/page_start.dart';
// import 'package:granapages/pages/level_page.dart';
// import 'package:granapages/pages/page_questions.dart';

import 'appwidget.dart';
import 'bloc/change_screen_bloc.dart';
import 'bloc/play_sound_bloc.dart';

// void main() {
//   return runApp(
//     BlocProvider(
//       create: (context) => ChangeScreenBloc(),
//       child: ModularApp(
//         module: AppModule(),
//         child: AppWidget(),
//       ),
//     ),
//   );
// }
void main() {
  return runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ChangeScreenBloc()),
        BlocProvider(create: (context) => PlaySoundBloc()),
      ],
      child: ModularApp(
        module: AppModule(),
        child: AppWidget(),
      ),
    ),
  );
}