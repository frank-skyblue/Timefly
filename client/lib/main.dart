import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: const AuthWrapper(),
    );
  }
}

class MyAppState extends ChangeNotifier {
  bool isAuthenticated = false;

  void toggleAuth() {
    isAuthenticated = !isAuthenticated;
    notifyListeners();
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<MyAppState>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 218, 188, 18))),
      home: appState.isAuthenticated
          ? const HomePage()
          : LoginPage(), // Pass toggleAuth function to LoginPage
    );
  }
}
