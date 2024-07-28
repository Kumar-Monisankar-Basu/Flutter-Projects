import 'package:flutter/material.dart';
import 'package:food_e/components/my_button.dart';
import 'package:food_e/components/my_textfield.dart';
import 'package:food_e/services/auth/auth_service.dart';
import 'package:lottie/lottie.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void register() async {
    final _authService = AuthService();
    if (passwordController.text == confirmPasswordController.text) {
      try {
        await _authService.SignUpWithEmailPassword(
          emailController.text,
          passwordController.text,
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }
    else{
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            title: Text("Password Didn't Match!"),
          ),
        );
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/animations/lock.json',
            width: 150,
            height: 150,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 25),
          Text("Let's Create an Acount For You!",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              )),
          const SizedBox(height: 25),
          MyTextfield(
            controller: emailController,
            hintText: "Email",
            obscureText: false,
          ),
          const SizedBox(height: 10),
          MyTextfield(
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
          ),
          const SizedBox(height: 10),
          MyTextfield(
            controller: confirmPasswordController,
            hintText: "Confirm Password",
            obscureText: true,
          ),
          const SizedBox(height: 10),
          MyButton(
            text: "Sign Up",
            onTap: register,
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already Have An Account?",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Log In",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
