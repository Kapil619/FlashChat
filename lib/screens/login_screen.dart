import 'package:firebase_auth/firebase_auth.dart';
import 'package:flashchat/constants.dart';
import 'package:flashchat/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  hintText: 'Enter your password'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            _isLoading
                ? const Center(child: CircularProgressIndicator())
                : RoundedButton(
                    color: Colors.lightBlueAccent,
                    title: 'Log in',
                    onPressed: () async {
                      setState(
                        () {
                          _isLoading = true;
                        },
                      );
                      try {
                        final user = await _auth.signInWithEmailAndPassword(
                            email: email!, password: password!);

                        if (user != null) {
                          Navigator.pushNamed(context, '/chat');
                        }
                        setState(
                          () {
                            _isLoading = false;
                          },
                        );
                      } catch (e) {
                        print(e);
                      }
                    },
                  )
          ],
        ),
      ),
    );
  }
}
