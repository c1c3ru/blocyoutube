part of 'counter_bloc.dart';

abstract class CounterEvent {}

class CounterIcrementEvent extends CounterEvent {}

class CounterDecrementEvent extends CounterEvent {}
