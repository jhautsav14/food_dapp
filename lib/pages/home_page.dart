import 'package:flutter/material.dart';
import 'package:food_dapp/components/my_current_location.dart';
import 'package:food_dapp/components/my_description_box.dart';
import 'package:food_dapp/components/my_drawer.dart';
import 'package:food_dapp/components/my_silver_app_bar.dart';
import 'package:food_dapp/components/my_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin{
  // tab controller
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController= TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      drawer: MyDrawer(),
      body:NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent:25 ,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // location
                MyCurrentLocation(),

                MyDescriptionBox(),

                SizedBox(height: 50,)

              ],
            ), 
            
            title:MyTabBar(tabController: _tabController) 
          )
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            Text("Home page"),
            Text("Settings page"),
            Text("Person page"),
          ],
        )

      )

    );
  }
}