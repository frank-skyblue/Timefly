import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/my_button.dart';
import '../components/my_textfield.dart'; // ../ going to previous directory
import '../main.dart';
import '../components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  // Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<MyAppState>(
        context); // Receive the toggleAuth function from main
    final Function toggleAuth =
        appState.toggleAuth; // Assign the toggleAuth function to a variable

    return Scaffold(
      backgroundColor: const Color(0xFFF3E2CD),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // align everything to the middle for any screen size
            children: [
              // Logo
             /** Padding(
                padding: const EdgeInsets.only(top:0.0),
                child: Image.asset(
                  'lib/images/timefly.png',
                  height: 200,
                  width: 200,
                ),
              ),**/

              // Welcome back, you've been missed!
              const Text(
                'TIMEFLY',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                  fontFamily: 'ArchivoBlack',
                ),
                textAlign: TextAlign.center,
              ),

              const Text(
                'Moments in Time, Memories Forever...',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'ArchivoBlack',
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 0),

              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image.asset(
                  'lib/images/login.png',
                  height: 100,
                  width: 100,
                ),
              ),

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
                obscureText: true, // Set to true if it's a password field since you don't want it seen
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
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 25),

              // Continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // side by side
                children: const [
                  // google button
                  SquareTile(imagePath: 'lib/images/google.png'),

                  SizedBox(width: 0),
                ],
              ),
              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Sign Up Now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
