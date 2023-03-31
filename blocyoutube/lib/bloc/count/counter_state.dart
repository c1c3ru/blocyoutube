part of 'counter_bloc.dart';

@immutable
class CounterState extends Equatable {
  final int counterValue;

  const CounterState({required this.counterValue});

  @override
  List<Object?> get props => [];
}

class CounterInitial extends CounterState {
  CounterInitial() : super(counterValue: 0);
}

class IncrementState extends CounterState{
  IncrementState(int increasedValue) : super(counterValue: increasedValue);
}

class DecrementState extends CounterState{
  DecrementState(int decreasedValue) : super(counterValue: decreasedValue);
}