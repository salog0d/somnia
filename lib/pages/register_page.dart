import 'package:flutter/material.dart';
import 'package:somnia_test/components/my_botton.dart';
import 'package:somnia_test/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
    final void Function()? onTap;

   RegisterPage({super.key, this.onTap});

     void register() {

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(Icons.message,
          size:60,
          color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 50),

          //welcome back message
          Text(
            "Welcome, create an account to continue!",
            style: TextStyle(
               color:Theme.of(context).colorScheme.primary,
               fontSize: 16,
            ),
          ),
          const SizedBox(height: 25),

          //email textfield
          MyTextfield(
            hintText: "Email",
            obscureText: false,
            controller: _emailController,
          ),
          const SizedBox(height: 25),

          //pw textfield
          MyTextfield(
            hintText: "Password",
            obscureText: true,
            controller: _pwController,
          ),
          const SizedBox(height: 25),

          //confirm password
          MyTextfield(
            hintText: "Confirm password",
            obscureText: true,
            controller: _pwController,
          ),
          const SizedBox(height: 25),

          //login button

           MyBotton(
            text: "Sign Up",
            onTap: register,
          ),
          const SizedBox(height: 25),

          //register now
      // Register option
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already hace an account",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),


        ],
      )
    );
  }
}