import "package:flutter/material.dart";

showSnackbar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        content,
        style: const TextStyle(
            fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.redAccent,
    ),
  );
}

errorCheck(String res) {
  if (res.contains('invalid-email')) {
    res = 'Invalid email';
  } else if (res.contains('invalid-credential')) {
    res = 'Incorrect Email or Password';
  } else if (res.contains('email-already-in-use')) {
    res = 'Email already in use';
  } else if (res.contains('weak-password')) {
    res = 'Weak password';
  } else {
    res = 'Something went wrong';
  }
  return res;
}
