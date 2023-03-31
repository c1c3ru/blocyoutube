import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_home_page_event.dart';
import 'my_home_page_state.dart';

class MyHomePageBloc extends Bloc<MyHomePageEvent, MyHomePageState> {
  MyHomePageBloc() : super(const MyHomePageState(counter: 0));

  Stream<MyHomePageState> mapEventToState(MyHomePageEvent event) async* {
    if (event is MyHomePageEventIncrement) {
      yield state.copyWith(counter: state.counter + 1);
    }
  }
}
