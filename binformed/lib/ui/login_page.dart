import 'package:binformed/ui/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Login title
            const Text(
              'Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            // Container for login details
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  // Email field
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Enter Your Email'),
                  ),
                  const SizedBox(height: 8),
                  // Password field
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Password'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Login button
            ElevatedButton(
              onPressed: () {
                // handle login
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 16),
            // Or with text
            const Text(
              'or with',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 8),
            // Facebook and Google sign-in buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    
                  },
                  icon: const Icon(Icons.facebook),
                  label: const Text('Facebook'),
                ),
                const SizedBox(width: 8),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle Google sign-in
                  },
                  icon: const FaIcon(FontAwesomeIcons.google, size: 18,),
                  
                  label: const Text('Google'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Don't have an account text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
