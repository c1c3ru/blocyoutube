part of 'change_screen_bloc.dart';

class ChangeScreenState extends Equatable {
  final String imagePath;

  const ChangeScreenState({required this.imagePath});

  @override
  List<Object?> get props => [imagePath];

  ChangeScreenState copyWith({
    String? imagePath,
  }) {
    return ChangeScreenState(
      imagePath: imagePath ?? this.imagePath,
    );
  }
}

