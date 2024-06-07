import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';
import '../../controllers/auth_text_editing_controllers.dart';

class RegistrationPage extends StatefulWidget {


  final void Function()? onTap;
  const RegistrationPage({super.key, required this.onTap});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
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
              "Let's Create Account for Your",
              style: TextStyle(
                  fontSize: 18, color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              hintText: 'Full Name',
              controller: nameController,
              obsecure: false,
              keyboard: TextInputType.name,
            ),
            const SizedBox(
              height: 25,
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
              height: 25,
            ),
            CustomTextField(
                hintText: 'Confirm Password',
                controller: confirmPasswordController,
                obsecure: true,
                keyboard: TextInputType.visiblePassword,
                suffIcon: CupertinoIcons.eye_solid),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              title: 'Login',
              onTap: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have account?',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                TextButton(
                  onPressed: widget.onTap,
                  child: Text(
                    'Login Now ',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
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
