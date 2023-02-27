import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_frist_app/Screens/signin_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
        //home: const SignInScreen(),
      home: FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot) {
          if (snapshot.hasError){
            return const Text("Something went wrong");
          } else if (snapshot.hasData){
            return const SignInScreen();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )
        //home: const SignInScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // This will allow app bar & background color be one seamless gradient color
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset('assets/White-Lettering-Logo.png', height: 32),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF1f3348),
                  Color(0xFF1c283f),
                  Color(0xFF1a1e35),
                  Color(0xFF000000),
                ],
              )
          ),
          child: const Center(
          ),
        ),
      ),
    );
  }
}



