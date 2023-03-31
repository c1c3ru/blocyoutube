import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:estagiobloc/models/link.dart';

import 'link_list_event.dart';

class LinkListBloc extends Bloc<LinkListEvent, List<Link>> {
  LinkListBloc() : super([]);

  Stream<List<Link>> mapEventToState(LinkListEvent event) async* {
    if (event is AddLinkEvent) {
      yield [...state, event.link];
    } else if (event is RemoveLinkEvent) {
      yield state.where((link) => link != event.link).toList();
    }
  }
}
