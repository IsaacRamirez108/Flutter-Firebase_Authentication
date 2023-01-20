import 'package:flutter/material.dart';
class LeaseDatesScreen extends StatefulWidget {
  const LeaseDatesScreen({Key? key}) : super(key: key);

  @override
  State<LeaseDatesScreen> createState() => _LeaseDatesScreenState();
}

class _LeaseDatesScreenState extends State<LeaseDatesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
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
      ),
    );
  }
}