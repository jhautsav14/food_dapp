import 'package:flutter/material.dart';
import 'package:food_dapp/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      drawer: MyDrawer(),
      body: Center(
        child: Text("Home page"),
      ),
    );
  }
}