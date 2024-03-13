import 'package:flutter/material.dart';
import 'package:login_ui_flutter/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    hintText: "Enter Your Roll No",
                    hintStyle: TextStyle(color: Colors.white70),
                    contentPadding: EdgeInsetsDirectional.all(19.0)),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(color: Colors.white70),
                  contentPadding: EdgeInsetsDirectional.all(19.0),
                ),
              ),
            ),
            SizedBox(height: 30),
            TextButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1)),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>const RegisterScreen())
                  );
                },
                child: Text(
                  "Don't have an account? Register",
                  style: TextStyle(color: Colors.white70),
                ))
          ],
        )),
      ),
    );
  }
}
