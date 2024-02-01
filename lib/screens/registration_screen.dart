import 'package:flashchat/constants.dart';
import 'package:flashchat/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  bool _isLoading = false;
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: Hero(
                tag: 'logo',
                child: SizedBox(
                  height: 200.0,
                  child: Image.asset('images/logo.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration:
                  ktextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              decoration: ktextFieldDecoration.copyWith(
                  hintText: 'Enter your Password'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            _isLoading
                ? const Center(child: CircularProgressIndicator())
                : RoundedButton(
                    color: Colors.blueAccent,
                    title: 'Register',
                    onPressed: () async {
                      setState(
                        () {
                          _isLoading = true;
                        },
                      );
                      try {
                        await _auth.createUserWithEmailAndPassword(
                            email: email!, password: password!);
                        Navigator.pushNamed(context, '/chat');
                        setState(
                          () {
                            _isLoading = false;
                          },
                        );
                      } catch (e) {
                        debugPrint(
                          e.toString(),
                        );
                      }
                    },
                  )
          ],
        ),
      ),
    );
  }
}
