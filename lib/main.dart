import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'homepage.dart';
import 'searchpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                ),
              ),
              Tab(
                icon: Icon(MdiIcons.cameraOutline),
              ),
              Tab(
                icon: Icon(MdiIcons.heartOutline),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                ),
              ),
            ],
            labelColor: Colors.black,
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Colors.black45,
            labelPadding: EdgeInsets.only(bottom: 10.0, top: 10.0),
          ),
          body: TabBarView(children: [
            homePage(),
            searchPage(),
            Center(child: Text('post')),
            Center(child: Text('activities')),
            Center(child: Text('profile')),
          ])),
    );
  }
}

class backgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBackgroundImage,
      padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 15.0),
    );
  }
}

//
//DefaultTabController(
//length: 5,
//child: Scaffold(
//body: TabBarView(
//children: [
//new Container(
//color: Colors.yellow,
//),
//new Container(
//color: Colors.orange,
//),
//new Container(
//color: Colors.lightGreen,
//),
//new Container(
//color: Colors.red,
//),
//new Container(
//color: Colors.red,
//),
//],
//),
//bottomNavigationBar: new TabBar(
//tabs: [
//Tab(
//icon: new Icon(Icons.home),
//),
//Tab(
//icon: new Icon(Icons.wb_incandescent),
//),
//Tab(
//icon: new Icon(Icons.perm_identity),
//),
//Tab(
//icon: new Icon(Icons.search),
//),
//Tab(
//icon: new Icon(Icons.settings),
//)
//],
//labelColor: Colors.yellow,
//unselectedLabelColor: Colors.blue,
//indicatorSize: TabBarIndicatorSize.label,
//indicatorPadding: EdgeInsets.all(5.0),
//indicatorColor: Colors.red,
//),
//backgroundColor: Colors.black,
//),
