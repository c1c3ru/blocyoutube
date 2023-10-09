import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'play_sound_event.dart';

part 'play_sound_state.dart';

class PlaySoundBloc extends Bloc<PlaySoundEvent, PlaySoundState> {
  final AudioCache _audioCache = AudioCache();
  final AudioPlayer _audioPlayer = AudioPlayer();
  Timer? _timer;

  PlaySoundBloc()
      : super(
          InitialPlaySoundState(),
        ) {
    on<ButtonPressedEvent>((event, emit) async {
      var soundPath = '';
      switch (event.buttonType) {
        case ButtonType.sucessButton:
          soundPath = 'sounds/sucess.mp3';
          break;
        case ButtonType.prize:
          soundPath = 'sounds/caixa_registradora.mp3';
          break;
        case ButtonType.win:
          soundPath = 'sounds/moedas.mp3';
          break;
      }
      if (soundPath.isNotEmpty) {
        // await _audioCache.load(soundPath);
        // await _audioPlayer.play((await _audioCache.fetchToMemory(soundPath)) as Source);
        //_audioPlayer.play(soundPath, isLocal: true);
        //_audioPlayer.play(soundPath);
        _audioCache.load(soundPath);
        _timer?.cancel();
        _timer = Timer(const Duration(milliseconds: 2000), () {
          add(SoundFinishedEvent());
        });
      }
    });
    on<SoundFinishedEvent>((event, emit) {
      emit(SoundFinishedState());
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
