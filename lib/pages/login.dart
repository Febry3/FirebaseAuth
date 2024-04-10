import 'package:firebaseauth/Controller/loginController.dart';
import 'package:firebaseauth/Pages/register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Login Page',
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: "Email",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 151, 151, 151),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: "Password",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 151, 151, 151),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  logIn(emailController.text, passwordController.text, context);
                },
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              RichText(
                text: TextSpan(
                  text: '',
                  children: [
                    TextSpan(
                      text: 'Don\'t have an account?',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                        text: ' Register here!',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  transitionDuration: Duration.zero,
                                  reverseTransitionDuration: Duration.zero,
                                  pageBuilder: (_, __, ___) =>
                                      const RegisterPage()),
                            );
                          }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
