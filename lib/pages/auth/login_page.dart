import 'package:chat_app/components/custom_button.dart';
import 'package:chat_app/components/custom_text_field.dart';
import 'package:chat_app/controllers/auth_controller.dart';
import 'package:chat_app/controllers/auth_text_editing_controllers.dart';
import 'package:chat_app/pages/Home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void login( context) async {
    // auth controller
    final authServices = AuthController();

    // try login

    try {
      await authServices.signInWithEmailPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(e.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.chat,
              size: 100,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Welcome Back, You've Been Missed",
              style: TextStyle(
                  fontSize: 18, color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              hintText: 'Email',
              controller: emailController,
              obsecure: false,
              keyboard: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextField(
                hintText: 'Password',
                controller: passwordController,
                obsecure: true,
                keyboard: TextInputType.visiblePassword,
                suffIcon: CupertinoIcons.eye_solid),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
                title: 'Login',
                onTap: () {
                  FocusScope.of(context).unfocus();
                  login(context);
                }),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member? ',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                TextButton(
                  onPressed: widget.onTap,
                  child: Text(
                    'Register Now ',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
