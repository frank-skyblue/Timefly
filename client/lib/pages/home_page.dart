import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<MyAppState>(
        context); // Receive the toggleAuth function from main
    final Function toggleAuth =
        appState.toggleAuth; // Assign the toggleAuth function to a variable

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Home Page!'),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement logout functionality
                toggleAuth();
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
