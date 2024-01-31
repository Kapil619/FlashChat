// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flashchat/screens/login_screen.dart';
import 'package:flashchat/screens/registration_screen.dart';
import 'package:flashchat/screens/chat_screen.dart';
import 'package:flashchat/screens/welcome_screen.dart';
import 'package:flashchat/constants.dart';

void main() => runApp(const FlashChat());

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
