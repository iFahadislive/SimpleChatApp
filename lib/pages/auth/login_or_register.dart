import 'package:chat_app/pages/auth/login_page.dart';
import 'package:chat_app/pages/auth/registration_page.dart';
import 'package:flutter/material.dart';


class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

// Initially show Login Page
  bool showLoginPage = true;



  // toggle between login and register
  void togglePages(){
   setState(() {
     showLoginPage = !showLoginPage;
   });
  }

  @override
  Widget build(BuildContext context) {

    if (showLoginPage) {
      return  LoginPage(onTap: togglePages,);
    }  else{
      return  RegistrationPage(onTap: togglePages,);
    }

  }
}