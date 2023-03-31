import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_store.dart';

class CounterController {
  final CounterStore _store;

  CounterController(this._store);

  int get count => _store.state;

  void increment() => _store.increment();

  void decrement() => _store.decrement();
}
