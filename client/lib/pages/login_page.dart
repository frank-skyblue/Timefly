import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:modernlogintute/components/my_button.dart';
import '../components/my_textfield.dart';
import '../main.dart';
//import 'package:modernlogintute/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  // Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

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
            Padding(
              padding: const EdgeInsets.all(64.0),
              child: Image.asset(
                'lib/images/timefly.png',
                width: 300,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(64.0),
              child: Image.asset(
                'lib/images/login.png',
                width: 200,
              ),
            ),

            // Welcome back, you've been missed!
            const Center(
              child: Text(
                'Welcome back! Sign in to save your memories!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'ArchivoBlack',
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Username text field
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // Password text field
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true, // Set to true if it's a password field
            ),

            const SizedBox(height: 10),

            // forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // Sign in button
            // Add your sign-in button here
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
          ],
        ),
      ),
    );
  }
}
