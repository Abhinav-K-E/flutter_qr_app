import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:login_ui_flutter/login_screen.dart';
import 'package:http/http.dart' as http;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();
  final rollnoController = TextEditingController(); // Corrected variable name
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void register() async {
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');

    Map<String, String> requestBody = {
      'name': nameController.text,
      'email': emailController.text,
      'rollno': rollnoController.text,
      'password': passwordController.text,
    };

    var response = await http.post(uri,
        headers: <String, String>{
          'content-type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(requestBody));

    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      // Show dialog box upon successful submission
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text(
          'Registration successfull',
          style: TextStyle(
            color: Colors.teal,
          ),
        ),
        backgroundColor: Colors.white,
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          textColor: Colors.black,
          label: 'OK',
          onPressed: () {},
        ),
      ));
    } else {
      // Show error dialog if request failed
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text(data['message']),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Registration",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InputText(
                hinttext: 'Enter your Name',
                controllerr: nameController,
                secureValue: false),
            InputText(
                hinttext: 'Enter your roll no',
                controllerr: rollnoController,
                secureValue: false),
            InputText(
                hinttext: 'Enter your Email',
                controllerr: emailController,
                secureValue: false),
            InputText(
                hinttext: 'Enter your Password',
                controllerr: passwordController,
                secureValue: true),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white70, width: 1),
                ),
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              ),
              onPressed: () {
                // Implement registration logic here
                register();
              },
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
    Key? key,
    required this.hinttext,
    required this.controllerr,
    required this.secureValue,
  }) : super(key: key);

  final String hinttext;
  final TextEditingController controllerr;
  final bool secureValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: controllerr,
        obscureText: secureValue,
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
