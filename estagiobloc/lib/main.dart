import 'package:flutter/material.dart';
import 'package:myapp/http_overrides.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = HttpOverridesGlobal();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AppState()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: _handleScreen(),
    );
  }

  Widget _handleScreen() {
    return Consumer<AppState>(
      builder: (context, appState, _) {
        switch (appState.appStatus) {
          case AppStatus.authenticated:
            return HomeScreen();
          case AppStatus.unauthenticated:
            return LoginScreen();
          default:
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
        }
      },
    );
  }
}
