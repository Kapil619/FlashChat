import 'package:flutter/material.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({required this.onTap, required this.text, super.key});

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account? ',
          style: TextStyle(color: Colors.black),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            text,
            style: const TextStyle(color: Colors.blueAccent),
          ),
        ),
      ],
    );
  }
}
