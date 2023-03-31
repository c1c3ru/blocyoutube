import 'package:flutter/material.dart';

enum AppStatus {
  authenticated,
  unauthenticated,
  unknown,
}

class AppState with ChangeNotifier {
  AppStatus _appStatus = AppStatus.unknown;

  AppStatus get appStatus => _appStatus;

  void setAppStatus(AppStatus status) {
    _appStatus = status;
    notifyListeners();
  }
}
