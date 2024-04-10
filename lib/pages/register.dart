import 'package:firebaseauth/Controller/registerController.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
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
                'Register Page',
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
              TextField(
                controller: confirmPasswordController,
                decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: "Confirm Password",
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
                  register(emailController.text, passwordController.text,
                      confirmPasswordController.text, context);
                  Navigator.pop(context);
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
                      'Register',
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
                      text: 'Already have an account?',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                        text: ' Login here!',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(context);
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
