import 'package:flutter/material.dart';
import 'package:my_frist_app/Screens/signup_screen.dart';
import '../reusable_widgets/reusable_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
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
                  const Text("Welcome To DENARI", style: TextStyle(fontSize: 35, color: Colors.white, fontFamily: 'Raleway', fontWeight: FontWeight.w200)),
                  continueButton(context, false, () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SignUpScreen()));
                    }),
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
