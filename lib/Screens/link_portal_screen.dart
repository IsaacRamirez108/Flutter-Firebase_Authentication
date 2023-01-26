import 'package:flutter/material.dart';
import 'package:my_frist_app/Screens/checkout_screen.dart';
import '../reusable_widgets/reusable_widget.dart';

class LinkPortalScreen extends StatefulWidget {
  const LinkPortalScreen({Key? key}) : super(key: key);

  @override
  State<LinkPortalScreen> createState() => _LinkPortalScreenState();
}

class _LinkPortalScreenState extends State<LinkPortalScreen> {

  final TextEditingController _portalURL = TextEditingController();
  final TextEditingController _portalUserName = TextEditingController();
  final TextEditingController _portalPassword = TextEditingController();


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
                    "Link your rental portal",
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
                                  text: "For faster verification, link your rental portal. Be sure to enter the exact web address where you enter your login credentials.",
                                  style: TextStyle(fontSize: 15, color: Colors.white)
                              )
                            ])
                    )
                )
              ],),
              const SizedBox(
                height: 5,
              ),
              reusableTextField("https://rentportal.com", Icons.link_off, false, _portalURL),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Username", Icons.person_outline, false, _portalUserName),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Password", Icons.lock_outline, false, _portalPassword),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 285, 0, 20),
                child: continueButton(context, false, () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CheckOutScreen()));
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
