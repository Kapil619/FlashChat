// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flashchat/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flashchat/screens/login_screen.dart';
import 'package:flashchat/screens/registration_screen.dart';
import 'package:flashchat/screens/chat_screen.dart';
import 'package:flashchat/screens/welcome_screen.dart';
import 'package:flashchat/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   textTheme: const TextTheme(
      //     body1: TextStyle(color: Colors.black54),
      //   ),
      // ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegistrationScreen(),
        '/chat': (context) => const ChatScreen(),
      },
    );
  }
}
