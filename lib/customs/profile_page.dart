import 'package:flutter/material.dart';
import 'package:learnle/screens/home_screen.dart';
import 'package:learnle/screens/login_screen.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        color: Colors.blueGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 16.0,
            ),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile-icon-9.png'),
              backgroundColor: Colors.white,
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              'User',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              'User@gmail.com',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const SizedBox(
              height: 8.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              child: const Text("Change Password"),
            ),
            const SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: const Text("Change Language"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguage(String language) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey[300],
      ),
      child: Text(
        language,
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }
}
