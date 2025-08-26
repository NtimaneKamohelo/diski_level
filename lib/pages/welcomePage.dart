import 'package:diski_level/pages/login.dart';
import 'package:diski_level/shared_utils/widgets/buttons/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Welcome",
          style: TextStyle(),
        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              //Welcome page Image
              Container(
                padding: const EdgeInsets.all(50),
                child: Image.asset(
                  "lib/assets/images/welcome/welcomePage_Img.png",
                  width: 300,
                  height: 300,
                  fit: BoxFit.contain,
                ),
              ),


              //Register Button welcome page
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButtons(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())),
                    btnText: "Register"
                  ).mainButton(),

                  //OR tag


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrimaryButtons(
                        onPressed: () => LoginScreen,
                        btnText: ""
                      ).mediaButton(FaIcon(FontAwesomeIcons.google, color: Colors.red)),
                        
                      PrimaryButtons(
                        onPressed: () => LoginScreen,
                        btnText: ""
                      ).mediaButton(const FaIcon(FontAwesomeIcons.facebook, color: Colors.blue)),
                    ],
                  )
                ],
              ),


              
            ],
          ),
        ),
      ),
    );
  }
}