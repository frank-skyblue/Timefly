import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<MyAppState>(
        context); // Receive the toggleAuth function from main
    final Function toggleAuth =
        appState.toggleAuth; // Assign the toggleAuth function to a variable

    return Scaffold(
      backgroundColor: const Color(0xFFF3E2CD),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            // Logo
            Image.asset(
              'lib/images/timefly.png',
              width: 300,
              height: 300,
            ),

            Image.asset(
              'lib/images/login.png',
              width: 200,
              height: 200,
            ),

            // Welcome back, you've been missed!
            const Text(
              'Welcome back! sign in to save your memories!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'ArchivoBlack',
              ),
            ),

            // Username textfield
            const TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),

            // Password textfield
            // Add your password TextField here

            // Sign in button
            // Add your sign-in button here
            // Sign in button
            ElevatedButton(
              onPressed: () {
                // Add your sign-in button logic here
                toggleAuth();
              },
              child: const Text('Sign In'),
            ),

            // Continue with
            // Add your continue with widget here

            // Google sign in button
            // Add your Google sign-in button here

            // Not a member? Sign in
            // Add your "Not a member? Sign in" widget here
          ], // <-- Added a closing bracket for the Column
        ),
      ),
    );
  }
}
