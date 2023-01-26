import 'package:flutter/material.dart';
import 'package:my_frist_app/Screens/signup_screen.dart';
import '../reusable_widgets/reusable_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final image = Image.asset('assets/White-Lettering-Logo.png', height: 25,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFF1f3348),
              Color(0xFF1c283f),
              Color(0xFF1a1e35),
              Color(0xFF000000),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),

          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.15, 20, 0),
              child: Column(
                children: <Widget>[
                  Container(
                      //margin: const EdgeInsets.only(top: 5),
                      //padding: const EdgeInsets.only(left: 0,top: 0, right: 0, bottom: 0),
                      child: const Text.rich(
                          TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Welcome To DENARI",
                                    style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)
                                ),
                              ])
                      )
                  ),
                   Container(
                      //margin: const EdgeInsets.all(20),
                       margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.only(left: 0,top: 15, right: 0, bottom: 0),
                       child: const Text(
                         'DENARI helps renters build credit with the rent they already pay!',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           fontSize: 20, color: Colors.white,
                         ),
                       ),
                    ),
                  Container(
                    //margin: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 0,top: 150, right: 0, bottom: 0),
                    child: const Text(
                      "Here's what to expect:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    //margin: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 0,top: 15, right: 60, bottom: 0),
                    child: const Text(
                      '1. Enter your personal information ',
                      style: TextStyle(
                        fontSize: 20, color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    //margin: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 0,top: 15, right: 270, bottom: 0),
                    child: const Text(
                      '2. Checkout ',
                      style: TextStyle(
                        fontSize: 20, color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    //margin: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 0,top: 15, right: 0, bottom: 0),
                    child: const Text(
                      '3. Denari verifies and reports your rent payments',
                      style: TextStyle(
                        fontSize: 20, color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    //margin: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 0,top: 15, right: 0, bottom: 0),
                    child: const Text(
                      '4. Sit back and watch your credit score increase',
                      style: TextStyle(
                        fontSize: 20, color: Colors.white,
                      ),
                    ),
                  ),
                 Container(
                    margin: const EdgeInsets.fromLTRB(0, 100, 0, 20),
                    child: continueButton(context, false, () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SignUpScreen()));
                    }),
                  )
                ]
              ),
            ),
          ),
        )
      );
    }
}









// child: Row(
//              children: [
//                Padding(padding: EdgeInsets.fromLTRB(48, MediaQuery.of(context).size.height * 0.4, 0, 0)),
//                const Text("Welcome To DENARI", style: TextStyle(fontSize: 35, color: Colors.white, fontFamily: 'Raleway', fontWeight: FontWeight.w200)),
//              ],
//         ),
//       ),
//     );
//   }
// }
