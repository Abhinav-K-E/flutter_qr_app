import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "Registration",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const InputText(hinttext: 'Enter your Name'),
            const InputText(hinttext: 'Enter your roll no'),
            const InputText(hinttext: 'Enter your Email'),
            const InputText(hinttext: 'Enter your Password'),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1)),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              ),
              onPressed: () {},
              child: const Text(
                "Register",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InputText extends StatelessWidget {
  const InputText({
    super.key,
    required this.hinttext,
  });

  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(6),
          ),
          hintText: hinttext,
          hintStyle: const TextStyle(color: Colors.white70),
          contentPadding: const EdgeInsetsDirectional.all(19.0),
        ),
      ),
    );
  }
}
