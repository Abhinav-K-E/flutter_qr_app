import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Registration",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InputText(hinttext: 'Enter your Name'),
              InputText(hinttext: 'Enter your roll no'),
              InputText(hinttext: 'Enter your Email'),
              InputText(hinttext: 'Enter your Password'),

              SizedBox(
                height: 30,
              ),
              TextButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1)),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
                onPressed: () {},
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
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
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(6),
          ),
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.white70),
          contentPadding: EdgeInsetsDirectional.all(19.0),
        ),
      ),
    );
  }
}
