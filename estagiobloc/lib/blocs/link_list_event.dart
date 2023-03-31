import 'package:estagiobloc/models/link.dart';

abstract class LinkListEvent {}

class AddLinkEvent extends LinkListEvent {
  final Link link;

  AddLinkEvent(this.link);
}

class RemoveLinkEvent extends LinkListEvent {
  final Link link;

  RemoveLinkEvent(this.link);
}
