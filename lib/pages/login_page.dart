
import 'package:flutter/material.dart';
import 'package:food_dapp/components/my_button.dart';
import 'package:food_dapp/components/my_textfield.dart';
import 'package:food_dapp/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  
  
  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login method
  void login(){

    // fill out authentication  here..

    // navigate to home page
    Navigator.push(context, 
      MaterialPageRoute(builder: (context)=> HomePage())
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(child:
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/v1.png",height: 200,),
          // Icon(
          //   Icons.lock_open_rounded,
          //   size: 100,
          //   color: Theme.of(context).colorScheme.inversePrimary,
          // ),
          const SizedBox(height: 1,),

          Text(
            "UniShop App",
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

          // email textfield

          MyTextField(
            hintText: "Password",
            controller: passwordController,
            obscureText: true,

          ),
          const SizedBox(height: 10,),
          MyButton(text: 'Sign In', onTap: login,),

          const SizedBox(height: 25,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Not a member?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary
                ),
              ),
              const SizedBox(width: 4,),
              GestureDetector(
                onTap: widget.onTap,
                child: Text("Register Now",
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