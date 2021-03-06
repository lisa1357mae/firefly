import 'package:flutter/material.dart';
import "package:flare_flutter/flare_actor.dart";


void main()=> runApp(
  MaterialApp(
    home: MyApp(), //root widget of application
    routes: {},
    title: "Navigation Drawer",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    primarySwatch: Colors.blue,
    ),
  )
);

//our own widget class
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Container();
  }
}


class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Firefly"),
         centerTitle: true,
         backgroundColor: Colors.grey,
      ),

      body: Container(

        height: 800,
        width: 800,
    child: FlareActor("animations/firefly_animation2.flr",
        alignment: Alignment.center,
        animation: "rotate_scale_color")

    ),



      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.grey,
      ),


      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(""),
              accountEmail: Text(""),
              decoration: BoxDecoration(
                color: const Color(0xFF006064),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(
                  "L",
                  style: TextStyle(fontSize: 40.0, color: Colors.black),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.add_to_photos),
              title: Text("Add Items"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share with Friends"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text("Rate and Review"),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}