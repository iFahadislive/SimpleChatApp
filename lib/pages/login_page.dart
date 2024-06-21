
import 'package:chat_app/components/custom_btn.dart';
import 'package:chat_app/components/text_form_field.dart';
import 'package:chat_app/constants/text-style.dart';
import 'package:chat_app/controllers/auth_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../services/auth/auth_services.dart';

class LoginPage extends StatelessWidget {
  // use for toggle pages in RegisterOrLoginPage
  final void Function() onTap;

  const LoginPage({super.key, required this.onTap});

  void login(BuildContext context) async{
    final  authServices = AuthServices();

    try {
      authServices.signInWithEmailAndPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      showDialog(context: context, builder: (context) => AlertDialog(
        title: Text(e.toString()),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login'.toUpperCase(),
                  style: headline1(context),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Icon(
                  Icons.message_rounded,
                  color: Theme.of(context).colorScheme.primary,
                  size: 70.h,
                ),
                Text(
                  'Please Enter your Credentials to Login',
                  style: normalText(context),
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomTextFormField(
                  controller: emailController,
                  hintText: 'Enter your Email',
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'Email',
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomTextFormField(
                  controller: passwordController,
                  hintText: 'Enter your Password',
                  keyboardType: TextInputType.visiblePassword,
                  labelText: 'Password',
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomBtn(title: 'Login', onTap:()=> login(context)),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have Account?",
                      style: normalText(context),
                    ),
                    TextButton(
                        onPressed: onTap,
                        child: Text(
                          'Signup',
                          style: headline5(context),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
