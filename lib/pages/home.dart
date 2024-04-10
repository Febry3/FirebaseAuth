import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseauth/Controller/logoutController.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              logOut();
            },
            child: const Icon(
              Icons.logout_outlined,
              size: 30,
            ),
          )
        ],
      ),
      body: Center(
        child: Text(
          'Welcome ${user.email}',
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
