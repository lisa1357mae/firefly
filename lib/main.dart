import 'package:flutter/material.dart';


void main()=> runApp(
  MaterialApp(
    home: MyApp(), //root widget of application
    title: "Navigation Drawer",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    primarySwatch: Colors.blue,
),
  )
);
class WidgetName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}


class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Home"),
         centerTitle: true,
         backgroundColor: Colors.pink,
      ),

      body: Center(
        child: Text(
          "FireFly",
          style: TextStyle(
          fontSize: 34.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.orange[200],
            fontFamily: 'ShadowsIntoLight',
        ),
      )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
          child: Text('click'),
  backgroundColor: Colors.pink,
      ),


      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(""),
              accountEmail: Text(""),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF9C4),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green,
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