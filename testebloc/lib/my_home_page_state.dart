import 'package:equatable/equatable.dart';

class MyHomePageState extends Equatable {
  final int counter;

  const MyHomePageState({required this.counter});

  MyHomePageState copyWith({int? counter}) {
    return MyHomePageState(counter: counter ?? this.counter);
  }

  @override
  List<Object?> get props => [counter];

  @override
  bool get stringify => true;
}
