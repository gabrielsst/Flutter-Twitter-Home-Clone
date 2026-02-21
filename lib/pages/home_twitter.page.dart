import 'package:flutter/material.dart';
import 'package:primeiro_aplicativo/widgets/custom_buttom.widget.dart';
import 'package:primeiro_aplicativo/widgets/social_button.widget.dart';
import 'package:primeiro_aplicativo/widgets/terms_and_privacy.widget.dart';

class HomeTwitterPage extends StatelessWidget {
  const HomeTwitterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/twitter.png',
                width: 30,
                height: 30,
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "See what's happening in the world right now.",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SocialButton(
                pathImage: 'assets/images/google.png',
                text: "Continue with Google",
              ),  
              SizedBox(
                height: 15,
              ),
              SocialButton(
                pathImage: 'assets/images/apple_full.png',
                text: "Continue with Apple",
              ),

              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                    ),  
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("or"),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                    ),  
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              CustomButtom(
                text: "Create account",
              ),
              SizedBox(
                height: 30,
              ),
              TermsAndPrivacy(),
              SizedBox(
                height: 50,
              ),
              RichText(text: TextSpan(
                text: "Have an account already? ",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "Log in",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}