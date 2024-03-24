import 'package:binformed/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SignUpPage extends StatelessWidget {
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
            // Sign Up title
            const Text(
              'Sign Up',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            // Subtitle
            const Text(
              'Just a few quick things to get you started',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            // Container for user details
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  // Full Name field
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Enter Your Full Name'),
                  ),
                  const SizedBox(height: 8),
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
                  const SizedBox(height: 8),
                  // Confirm Password field
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Confirm Password'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Sign Up button
            ElevatedButton(
              onPressed: () {
                // handle sign up
              },
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 16),
            // Or with text
            const Text(
              'or with',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 8),
            // Facebook and Google sign-up buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle Facebook sign-up
                  },
                  icon: const Icon(Icons.facebook),
                  label: const Text('Facebook'),
                ),
                const SizedBox(width: 8),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle Google sign-in
                  },
                  icon: const FaIcon(FontAwesomeIcons.google),
                  label: const Text('Google'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Already have an account text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: const Text(
                    'Sign In',
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
