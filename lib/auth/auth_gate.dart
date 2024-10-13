import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:somnia_test/auth/login_or_register.dart';
import 'package:somnia_test/pages/home_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasData) {
            return const HomePage();  // User is logged in
          }

          return const LoginOrRegister();  // User is not logged in
        },
      ),
    );
  }
}
