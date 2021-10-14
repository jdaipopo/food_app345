import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/home/food_menu.dart';
import 'package:food_app/pages/home/profile_page.dart';
import 'package:food_app/pages/login/login_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var current_page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title:
        Text(
            current_page==0?
            "FOOD":"PROFILE"),

        actions: [
          IconButton(onPressed:  () {}, icon: Icon(Icons.search)),
          IconButton(onPressed:  () {}, icon: Icon(Icons.refresh)),
        ],

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Container(
                        width: 80.0,
                        height: 80.0,
                        child: Image.asset('assets/images/profile2.jpg'),
                      )
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sorawich Nitrat',
                        style: TextStyle(color: Colors.yellow),
                      ),
                      Text(
                        '\n  nitrat_s@silpakorn.edu',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.fastfood,
                        color: current_page==0? Colors.blueAccent:Colors.grey
                    ),
                  ),
                  Text('Food',style: TextStyle(color: current_page==0? Colors.blueAccent:Colors.grey)),
                ],
              ),
              onTap: () {
                // Update the state of the app.

                setState(() {
                  current_page = 0;
                  Navigator.of(context).pop();
                });
              },
            ),ListTile(
              title: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.self_improvement,
                        color: current_page==1? Colors.blueAccent:Colors.grey
                    ),
                  ),
                  Text('Profile',style: TextStyle(color: current_page==1? Colors.blueAccent:Colors.grey),),
                ],
              ),
              onTap: () {
                // Update the state of the app.
                setState(() {
                  current_page = 1;
                  Navigator.of(context).pop();
                });
              },
            ),

          ],
        ),
      ),

      body: Container(
        child: current_page == 0? food_menu(): profile_page()
      ),
    );
  }
}
