import 'package:flutter/material.dart';

class searchPage extends StatefulWidget {
  @override
  _searchPageState createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  final List<String> _listViewData = [
    "images/postPhoto/flutter_instacow.jpg",
    "images/postPhoto/flutter_instameditate.jpg",
    "images/postPhoto/flutter_starrynight.jpg",
    "images/profilePicture/flutter_instappl2.jpg",
    "images/postPhoto/flutter_insta1.jpg",
    "images/postPhoto/flutter_insta.jpg",
    "images/profilePicture/flutter_instappl.jpg",
    "images/profilePicture/flutter_instappl3.jpg",
    "images/profilePicture/flutter_instappl4.jpg",
    "images/profilePicture/flutter_instappl5.jpg",
    "images/postPhoto/flutter_instacow.jpg",
    "images/postPhoto/flutter_instameditate.jpg",
    "images/postPhoto/flutter_starrynight.jpg",
    "images/profilePicture/flutter_instappl2.jpg",
    "images/postPhoto/flutter_insta1.jpg",
    "images/postPhoto/flutter_insta.jpg",
    "images/profilePicture/flutter_instappl.jpg",
    "images/profilePicture/flutter_instappl3.jpg",
    "images/profilePicture/flutter_instappl4.jpg",
    "images/profilePicture/flutter_instappl5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: TextField(
            textInputAction: TextInputAction.continueAction,
            onChanged: (text) {},
            textAlign: TextAlign.center,
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            )),
      ),
      body: GridView.count(
          padding: EdgeInsets.only(top: 8.0),
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 5.0,
          children: _listViewData
              .map((data) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(data),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ))
              .toList()),
    );
  }
}
