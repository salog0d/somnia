import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:somnia_test/auth/auth_gate.dart';
import 'package:somnia_test/auth/login_or_register.dart';
import 'package:somnia_test/firebase_options.dart';
import 'package:somnia_test/themes/light_mode.dart';

void main() async {
  // Asegura que los bindings de Flutter estén inicializados antes de cualquier otra cosa
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Inicia la aplicación
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget es la raíz de tu aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: lightMode,
    );
  }
}
