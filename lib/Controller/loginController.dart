import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void logIn(final email, final password, final context) async {
  showDialog(
    context: context,
    builder: (context) {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.blue,
        ),
      );
    },
  );

  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    Navigator.pop(context);
  } on FirebaseAuthException catch (e) {
    Navigator.pop(context);
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    } else {
      print(e.code);
    }
  }
}
