import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DENARI'),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  // Color(0xFF1a1e35),
                  // Color(0xFF1c283f),
                  // Color(0xFF1f3348),
                  // Color(0xFF243d50),
                  // Color(0xFF2a4858),
                  // Backwards
                  Color(0xFF243d50),
                  Color(0xFF1f3348),
                  Color(0xFF1c283f),
                  Color(0xFF1a1e35),
                  Color(0xFF000000),
                  // 0xFF1a1e35
                  // 0xFF1c283f
                  // 0xFF1f3348
                  // 0xFF243d50
                  // 0xFF2a4858

                ],
              )
          ),
          child: const Center(
            child: Text(
              'Hello Gradient!',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}