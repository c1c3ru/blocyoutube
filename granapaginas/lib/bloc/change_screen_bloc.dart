import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'change_screen_event.dart';
part 'change_screen_state.dart';

class ChangeScreenBloc extends Bloc<ChangeScreenEvent, ChangeScreenState> {
  ChangeScreenBloc() : super(ChangeScreenState(imagePath: 'assets/images/espaco_texto_branco.png'));

  @override
  Stream<ChangeScreenState?> mapEventToState(ChangeScreenEvent event) async* {
    if (event is ChangeImageEvent) {
      final randomIndex = Random().nextInt(2);
      final imagePath = randomIndex == 0
          ? 'assets/images/espaco_texto_verde.png'
          : 'assets/images/espaco_texto_vermelho.png';
      yield state.copyWith(imagePath: imagePath);
    }
  }
}
