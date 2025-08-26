import 'package:diski_level/pages/welcomePage.dart';
import 'package:diski_level/shared_utils/widgets/buttons/primary_button.dart';
import 'package:diski_level/shared_utils/widgets/textfields/primary_textfileds.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              //Username TextField: email
              primaryTextfields(
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.abc),
                  hintText: "Email",
                  textEditingController: emailController,
              ).usernametextField(),
              
              //Password TextField
              primaryTextfields(
                  prefixIcon: Icon(Icons.lock), 
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Password",
                  textEditingController: passwordController,
              ).passwordTextField(),

              //LOGIN-Google-Facebook Login
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButtons(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage())),
                      btnText: "LOGIN"
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