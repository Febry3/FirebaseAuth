import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

void register(
    final email, final password, final confirmPassword, final context) async {
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
    if (confirmPassword == password) {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      Navigator.pop(context);
    } else {
      Navigator.pop(context);
      print("Password didnt match");
    }
  } on FirebaseAuthException catch (e) {
    Navigator.pop(context);
    print(e.code);
  }
}
