import 'package:assingment_appdelivery/commom/color_exstedtion.dart';
import 'package:assingment_appdelivery/login/login_view.dart';
import 'package:flutter/material.dart';

import '../common_widget/round_button.dart';
import 'sing_up_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var madia=MediaQuery.of(context).size;
    return Scaffold(
      body: Column(

        children: [

          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset("assets/img/welcome_top_shape.png",width: madia.width,

              ),
              Image.asset(
                "assets/img/app_logo.png",

                width: madia.width * 0.55,
                height: madia.width * 0.55,
                fit: BoxFit.contain,
              ),
            ],
          ),
          Text(
            "Discover the best foods from over 1,000\nrestaurants and fast delivery to your\ndoorstep",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: madia.width*0.1,
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(title: "Login", onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>const LoginView(),
                    ),
                );
              },),

            ),
          ),

          SizedBox(
            height: madia.width*0.1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundButton(
              title: "Create Account",
              type:RoundButtonType.textPrimary ,
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>const SignUpView(),
                  ),
                );
              },
            ),

          ),
        ],
      ),
    );
  }
}
