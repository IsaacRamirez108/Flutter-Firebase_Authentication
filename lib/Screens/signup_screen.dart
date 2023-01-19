import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
  // final TextEditingController _passwordTextController = TextEditingController();
  // final TextEditingController _emailTextController = TextEditingController();
  // final TextEditingController _userNameTextController = TextEditingController();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
        "Sign Up",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
    ),

    // Main Body Container
    body: Container(
      width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFF1f3348),
              Color(0xFF1c283f),
              Color(0xFF1a1e35),
              Color(0xFF000000),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),

        // Stack allows a new container to be created within the existing body container
      child: Stack(children: [
          Container(
          margin: const EdgeInsets.all(30),
          // This is padding to position the text where I want it to be
            padding: const EdgeInsets.only(left: 5,top: 110,right: 0,bottom: 0),
            child: const Text.rich(
                TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: "Hello There!",
                          style: TextStyle(fontSize: 30, color: Colors.white)
                      ),
                    ])
                )
              ),
          Container(
              margin: const EdgeInsets.all(30),
              // This is padding to position the text where I want it to be
              padding: const EdgeInsets.only(left: 5,top: 155,right: 0,bottom: 0),
              child: const Text.rich(
                  TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: "Let's start with some basic information to get you started.",
                            style: TextStyle(fontSize: 19, color: Colors.white)
                        )
                      ])
                  )
              )],
            ),







      )
    );
  }
}

