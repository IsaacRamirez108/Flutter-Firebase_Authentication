

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widget.dart';
import 'checkout_screen.dart';
import 'lease_date_screen.dart';

class DOBSSNScreen extends StatefulWidget {
  const DOBSSNScreen({Key? key}) : super(key: key);

  @override
  State<DOBSSNScreen> createState() => _DOBSSNScreenState();
}

class _DOBSSNScreenState extends State<DOBSSNScreen> {

  final TextEditingController _DOB = TextEditingController();
  final TextEditingController _SSN = TextEditingController();

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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              children: <Widget>[
                Stack(children: [
                  Container(
                    //margin: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.only(left: 25,top: 0, right: 0, bottom: 0),
                    child: const Text(
                      "Verify your identity",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    //margin: const EdgeInsets.only(top: 10),
                      margin: const EdgeInsets.only(top: 30, left: 18, bottom: 15, right: 20),
                      // This is padding to position the text where I want it to be
                      padding: const EdgeInsets.only(left: 3, top: 50, right: 0, bottom: 0),
                      child: const Text.rich(
                          TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Your date of birth and Social Security number are required in order to report your payments to TransUnion",
                                    style: TextStyle(fontSize: 15, color: Colors.white)
                                )
                              ])
                      )
                  )
                ],),
                const SizedBox(
                  height: 5,
                ),
                reusableDateBox("MM/DD/YYYY", Icons.calendar_month, false, _DOB),
                const SizedBox(
                  height: 20,
                ),
                reusablePasswordTextField("XXX-XX-XXXX", Icons.lock_outline, true, _SSN),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 370, 0, 20),
                  child: continueButton(context, false, () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LeaseDatesScreen()));
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
