import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pattern_formatter/date_formatter.dart';
import '../reusable_widgets/reusable_widget.dart';

class LeaseDatesScreen extends StatefulWidget {
  const LeaseDatesScreen({Key? key}) : super(key: key);

  @override
  State<LeaseDatesScreen> createState() => _LeaseDatesScreenState();
}

class _LeaseDatesScreenState extends State<LeaseDatesScreen> {

  final TextEditingController _startLeaseDate = TextEditingController();
  final TextEditingController _endLeaseDate = TextEditingController();

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
                      margin: const EdgeInsets.all(20),
                      // This is padding to position the text where I want it to be
                      padding: const EdgeInsets.only(left: 3,top: 10, right: 0, bottom: 0),
                      child: const Text.rich(
                          TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "When did you move in and when is your lease ending?",
                                    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                              ])
                      )
                  ),
                  Container(
                    //margin: const EdgeInsets.only(top: 10),
                      margin: const EdgeInsets.only(top: 45, left: 18, bottom: 50, right: 20),
                      // This is padding to position the text where I want it to be
                      padding: const EdgeInsets.only(left: 3, top: 50, right: 0, bottom: 0),
                      child: const Text.rich(
                          TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Move-in date is typically the start date of your oldest lease. If you don't remember the exact day, that is okay as long as the month is accurate.",
                                    style: TextStyle(fontSize: 15, color: Colors.white)
                                )
                              ])
                      )
                  )
                ],),
                //Title(color: Colors.white, child: const Text("Hello")),
                const Text("Start date", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 5,
                ),
                reusableDateBox("MM/DD/YYYY", Icons.calendar_month, false, _startLeaseDate),
                const SizedBox(
                  height: 20,
                ),
                const Text("Lease end date", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 5,
                ),
                reusableDateBox("MM/DD/YYYY", Icons.calendar_month, false, _endLeaseDate),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),


      ),
    );
  }
}
