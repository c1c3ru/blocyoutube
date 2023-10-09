part of 'play_sound_bloc.dart';

abstract class PlaySoundState extends Equatable {
  const PlaySoundState();

  @override
  List<Object> get props => [];
}

class InitialPlaySoundState extends PlaySoundState {}

class SoundFinishedState extends PlaySoundState {}
