import 'package:flutter/material.dart';
import 'package:my_frist_app/Screens/link_portal_screen.dart';

import '../reusable_widgets/reusable_widget.dart';

class UploadLeaseScreen extends StatefulWidget {
  const UploadLeaseScreen({Key? key}) : super(key: key);

  @override
  State<UploadLeaseScreen> createState() => _UploadLeaseScreenState();
}

class _UploadLeaseScreenState extends State<UploadLeaseScreen> {

  final TextEditingController _leaseCopy = TextEditingController();

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
                20, MediaQuery.of(context).size.height * 0.1, 20, 20),
            child: Column(
              children: <Widget>[
                Stack(children: [
                  Container(
                      margin: const EdgeInsets.all(20),
                      // This is padding to position the text where I want it to be
                      padding: const EdgeInsets.only(left: 0,top: 10, right: 0, bottom: 0),
                      child: const Text.rich(
                          TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Please submit a copy of your lease.",
                                    style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                              ])
                      )
                  ),
                  Container(
                    //margin: const EdgeInsets.only(top: 10),
                      margin: const EdgeInsets.only(top: 42, left: 18, bottom: 100, right: 20),
                      // This is padding to position the text where I want it to be
                      padding: const EdgeInsets.only(left: 0, top: 50, right: 0, bottom: 0),
                      child: const Text.rich(
                          TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "For faster verification, upload a copy of your lease. You can find this in your rental portal, if not contact your property manager for a copy.",
                                    style: TextStyle(fontSize: 16, color: Colors.white)
                                )
                              ])
                      )
                  ),
                  Container(
                    //margin: const EdgeInsets.only(top: 10),
                      margin: const EdgeInsets.only(top: 180, left: 18, bottom: 50, right: 20),
                      // This is padding to position the text where I want it to be
                      padding: const EdgeInsets.only(left: 110, top: 60, right: 110, bottom: 60),
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                      ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 10, color: Colors.white),
                        //tapTargetSize: AnimatedIcon(icon: Icons.upload_file, progress: kAlwaysCompleteAnimation.isCompleted),
                        backgroundColor: Colors.white30
                      ),
                      onPressed: null,
                      child: const Text('Add image or document', ),
                    ),
                  )
                ],),
                //Title(color: Colors.white, child: const Text("Hello")),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 280, 0, 20),
                  child: continueButton(context, false, () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LinkPortalScreen()));
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
