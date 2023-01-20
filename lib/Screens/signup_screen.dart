import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../reusable_widgets/reusable_widget.dart';
import 'home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();

}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _firstNameTextController = TextEditingController();
  final TextEditingController _lastNameTextController = TextEditingController();
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
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.1, 20, 0),
          child: Column(
            children: <Widget>[
              Stack(children: [
                Container(
                    margin: const EdgeInsets.all(20),
                    // This is padding to position the text where I want it to be
                    padding: const EdgeInsets.only(left: 3,top: 10, right: 0, bottom: 0),
                    child: const Text.rich(
                        TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Hello There!",
                                  style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)
                              ),
                            ])
                    )
                ),
                Container(
                    //margin: const EdgeInsets.only(top: 10),
                    margin: const EdgeInsets.only(top: 30, left: 18, bottom: 50, right: 20),
                    // This is padding to position the text where I want it to be
                    padding: const EdgeInsets.only(left: 3, top: 50, right: 0, bottom: 0),
                    child: const Text.rich(
                        TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Let's start with some basic information to get you started.",
                                  style: TextStyle(fontSize: 18, color: Colors.white)
                              )
                            ])
                    )
                )
              ],),
              reusableTextField("First Name", Icons.person_outline, false, _firstNameTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Last Name", Icons.person_outline, false, _lastNameTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Email", Icons.email_outlined, false, _emailTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Password", Icons.lock_outline, false, _passwordTextController),
              const SizedBox(
                height: 200,
              ),
              // reusableTextField("Enter UserName", Icons.person_outline, false, _numberTextController),
              // const SizedBox(
              //   height: 20,
              // ),
              firebaseUIButton(context, "Sign Up", () {
                FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                    email: _emailTextController.text,
                    password: _passwordTextController.text)
                    .then((value) {
                  print("Created New Account");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }).onError((error, stackTrace) {
                  print("Error ${error.toString()}");
                });
              })
              // signUpOption()
            ],
          ),
        ),
      ),


      )
    );
  }
}

