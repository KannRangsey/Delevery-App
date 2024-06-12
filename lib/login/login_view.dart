
import 'package:assingment_appdelivery/commom/color_exstedtion.dart';
import 'package:flutter/material.dart';

import '../common_widget/roude_textfile.dart';
import '../common_widget/round_button.dart';
import '../on_boarding/on_boarding_view.dart';
import 'rest_password_view.dart';
import 'sing_up_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  get txtEmail => null;

  get txtPassword => null;

  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context).size;
    return Scaffold(
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             const SizedBox(height: 64,),
             Text("Login",style: TextStyle(color:TColor.primary,fontSize: 30,fontWeight:FontWeight.w600 ),
             ),
             Text("Add you details to login",style: TextStyle(color:TColor.secondaryText,fontSize: 14,fontWeight:FontWeight.w600 ),
             ),
             const SizedBox(height: 25,
             ),
             const SizedBox(
               height: 25,
             ),
             RoundTextfield(
               hintText: "Your Email",
               controller: txtEmail,
               keyboardType: TextInputType.emailAddress,
             ),
             const SizedBox(
               height: 25,
             ),
             RoundTextfield(
               hintText: "Password",
               controller: txtPassword,
               obscureText: true,
             ),
             const SizedBox(
               height: 25,
             ),
             RoundButton(
                 title: "Login",
                 onPressed: () {
                  // btnLogin();
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) => const OnBoardingView(),
                     ),
                   );
                 }),

             TextButton(
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => const ResetPasswordView(),
                   ),
                 );
               },
               child: Text(
                 "Forgot your password?",
                 style: TextStyle(
                     color: TColor.secondaryText,
                     fontSize: 14,
                     fontWeight: FontWeight.w500),
               ),
             ),
             Text(
               "or Login With",
               style: TextStyle(
                   color: TColor.secondaryText,
                   fontSize: 14,
                   fontWeight: FontWeight.w500),
             ),
            InkWell(
             onTap: (){

             },
             child: Container(
             height: 56,
             alignment: Alignment.center,
             decoration: BoxDecoration(
               color: Colors.blue,
               borderRadius: BorderRadius.circular(28),
              ),
               child: Row(
                mainAxisSize: MainAxisSize.min,
                 children: [
                   Image.asset("assets/img/facebook_logo.png",
                   width: 15,
                     height: 15,
                     fit: BoxFit.contain,
                   ),
                   const SizedBox(
                     width: 8,
                   ),
                   Text(
                   "Login With Facebook",
                   style: TextStyle(
                     color: TColor.white,
                     fontSize: 14,
                     fontWeight: FontWeight.w500,
                   ),
                   ),
                 ],
               ),
             ),
            ),
             const SizedBox(
               height: 25,
             ),
             InkWell(
               onTap: (){

               },
               child: Container(
                 height: 56,
                 alignment: Alignment.center,
                 decoration: BoxDecoration(
                   color: Colors.lightGreen,
                   borderRadius: BorderRadius.circular(28),
                 ),
                 child: Row(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Image.asset("assets/img/google_logo.png",
                       width: 20,
                       height: 20,
                       fit: BoxFit.contain,
                     ),
                     Text(
                       "Login With Google",
                       style: TextStyle(
                         color: TColor.white,
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             const SizedBox(
               height: 50,
             ),

             TextButton(
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => const SignUpView(),
                   ),
                 );
               },
               child: Row(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Text(
                     "Don't have an Account? ",
                     style: TextStyle(
                         color: TColor.secondaryText,
                         fontSize: 14,
                         fontWeight: FontWeight.w500),
                   ),
                   Text(
                     "Sign Up",
                     style: TextStyle(
                         color: TColor.primary,
                         fontSize: 14,
                         fontWeight: FontWeight.w700),
                   ),
                 ],
               ),
             )
         ],
         ),
       ),
     ),
    );
  }
}
