import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/commons/responsive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text("Bem vindo de volta",
                  style: GoogleFonts.outfit(fontSize: 14.0,
                      color: Color.fromARGB(255, 131, 131, 131))),
              Text("Login para sua conta",
                  style: GoogleFonts.outfit(
                      fontSize: 22.0, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20.0),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
                    hintText: 'email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                    hintText: 'senha',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
