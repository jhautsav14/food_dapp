import 'package:flutter/material.dart';
import 'package:food_dapp/components/my_button.dart';
import 'package:food_dapp/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(child:
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/v2.png",height: 200,),
          // Icon(
          //   Icons.lock_open_rounded,
          //   size: 100,
          //   color: Theme.of(context).colorScheme.inversePrimary,
          // ),
          const SizedBox(height: 1,),

          Text(
            "Create Your UniShop Account",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            
          ),
          const SizedBox(height: 25,),

          // email textfield

          MyTextField(
            hintText: "Email",
            controller: emailController,
            obscureText: false,

          ),
          const SizedBox(height: 10,),

          // pass textfield

          MyTextField(
            hintText: "Password",
            controller: passwordController,
            obscureText: true,

          ),
           const SizedBox(height: 10,),

          // confirm pass textfield

          MyTextField(
            hintText: "Confirm Password",
            controller: confirmpasswordController,
            obscureText: true,

          ),
          const SizedBox(height: 10,),
          MyButton(text: 'Sign Up', onTap: (){},),

          const SizedBox(height: 25,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Alread a member?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary
                ),
              ),
              const SizedBox(width: 4,),
              GestureDetector(
                onTap: widget.onTap,
                child: Text("LogIn Now",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          )


        ],
      )),
    );
  }
}