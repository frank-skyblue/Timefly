import 'package:flutter/material.dart';
//import 'package:modernlogintute/components/my_button.dart';
import '../components/my_textfield.dart';
//import 'package:modernlogintute/components/square_tile.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  // Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3E2CD),
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
              'Welcome back! Sign in to save your memories!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'ArchivoBlack',
              ),
            ),

            SizedBox(height: 25),

            // Username text field
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),

            SizedBox(height: 10),

            // Password text field
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true, // Set to true if it's a password field
            ),

            SizedBox(height: 10),

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
