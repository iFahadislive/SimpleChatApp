
import 'package:chat_app/controllers/auth_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/custom_btn.dart';
import '../components/text_form_field.dart';
import '../constants/text-style.dart';
import '../services/auth/auth_services.dart';

class SignupPage extends StatelessWidget {
  // user for toggle pages in LoginOrSignupPage.dart
  final void Function() onTap;

  const SignupPage({super.key, required this.onTap});

  void signup(BuildContext context) {
    final authServices = AuthServices();
    if (passwordController.text == confirmPasswordController.text) {
      try {

        authServices.signUpWithEmailPassword(
            emailController.text, passwordController.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(e.toString()),
            ));
      }


    } else {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            title: Text("Password Didn't Matched"),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Signup'.toUpperCase(),
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
                  'Create your account ',
                  style: normalText(context),
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomTextFormField(
                  controller: nameController,
                  hintText: 'Enter your Full Name',
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'Name',
                ),
                SizedBox(
                  height: 15.h,
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
                  hintText: 'Enter strong Password',
                  keyboardType: TextInputType.visiblePassword,
                  labelText: 'Password',
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomTextFormField(
                  controller: confirmPasswordController,
                  hintText: 'Enter Password Again',
                  keyboardType: TextInputType.visiblePassword,
                  labelText: 'Confirm Password',
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomBtn(title: 'Signup', onTap: () => signup(context)),
                SizedBox(
                  height: 10.h,
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
                          'Login',
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
