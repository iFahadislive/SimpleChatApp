import 'package:chat_app/constants/routes.dart';
import 'package:chat_app/pages/auth/login_page.dart';
import 'package:chat_app/pages/auth/registration_page.dart';

var routes = {

  // App Auth
  AppRoutes.loginPage: (context) =>  LoginPage(onTap: () {  }),
  AppRoutes.registrationPage: (context) =>  RegistrationPage(onTap: () {  },),
};