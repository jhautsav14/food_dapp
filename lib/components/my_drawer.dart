import 'package:flutter/material.dart';
import 'package:food_dapp/components/my_drawer_tile.dart';
import 'package:food_dapp/pages/login_page.dart';
import 'package:food_dapp/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [

          //app logo
          Padding(
            padding: const EdgeInsets.only(top:50.0),
            child: Image.asset("assets/icons/v1.png", height: 150,),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          // home list tile
          MyDrawerTile(
            text: "HOME",
            icon: Icons.home,
            onTap: (){
              Navigator.pop(context);
            },

          ),

          // settings list tile
          MyDrawerTile(
            text: "SETTINGS",
            icon: Icons.settings,
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=> const SettingsPage())
              );
            },

          ),
          const Spacer(),
          // logout list tile
          MyDrawerTile(
            text: "LOGOUT",
            icon: Icons.logout,
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=> const LoginPage())
              );

            },

          ),
          const SizedBox(height: 25,)

        ]
      ),
    );
  }
}