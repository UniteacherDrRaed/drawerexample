import 'package:flutter/material.dart';
class MainScreen extends StatefulWidget {
   MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
int currentpage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.lightBlue,
        title: Text("example of drawer"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child:ListView(
          children: [
            DrawerHeader(child: Text("header"),

            ),
            ListTile(
              title:Text("tables"),
              onTap: ()
              {
              setState(() {
                currentpage=0;
              });
              },
            ),
            ListTile(
              title:Text("chairs"),
              onTap: (){
                setState(() {
                  currentpage=1;
                });
              },
            ),
            ListTile(
              title:Text("about"),
              onTap: (){
                setState(() {
                  currentpage=2;
                });
              },
            ),
          ],
        )
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 120,
          color: Colors.red,
          child: Text("$currentpage"),
        ),
      ),
    );
  }
}
