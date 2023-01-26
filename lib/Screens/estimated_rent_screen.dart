import 'package:flutter/material.dart';
import 'package:my_frist_app/Screens/upload_lease_screen.dart';

import '../reusable_widgets/reusable_widget.dart';

class EstimatedRentScreen extends StatefulWidget {
  const EstimatedRentScreen({Key? key}) : super(key: key);

  @override
  State<EstimatedRentScreen> createState() => _EstimatedRentScreenState();
}

class _EstimatedRentScreenState extends State<EstimatedRentScreen> {
  final TextEditingController _estimatedRent = TextEditingController();

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
                                    text: "What is your most recent rent payment?",
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
                                    text: "This number should be similar to what comes out of your account every month. Dont worry if your rent payment fluctuates due to utilities and other charges.",
                                    style: TextStyle(fontSize: 15, color: Colors.white)
                                )
                              ])
                      )
                  ),
                  Container(
                    //margin: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 25,top: 180, right: 0, bottom: 5),
                    child: const Text(
                      'Monthly rent',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],),
                //const Text("Monthly rent", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                // const SizedBox(
                //   height: 5,
                // ),
                reusableTextField("", Icons.attach_money_outlined, false, _estimatedRent),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 390, 0, 20),
                  child: continueButton(context, false, () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const UploadLeaseScreen()));
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
