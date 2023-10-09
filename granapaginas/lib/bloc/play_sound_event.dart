part of 'play_sound_bloc.dart';

abstract class PlaySoundEvent extends Equatable {
  const PlaySoundEvent();

  @override
  List<Object> get props => [];
}

class ButtonPressedEvent extends PlaySoundEvent {
  final ButtonType buttonType;

  const ButtonPressedEvent(this.buttonType);

  @override
  List<Object> get props => [buttonType];
}

class SoundFinishedEvent extends PlaySoundEvent {
  const SoundFinishedEvent();
}

enum ButtonType { sucessButton, prize, win }
