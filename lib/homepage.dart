import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:productivity_app/UserData.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Row(
          children: <Widget>[
            SizedBox(width: 32), // why would this overflow?
            InkWell(
              child: Icon(MdiIcons.shapeCirclePlus),
              onTap: () {
                print("click menu");
              },
            ),
          ],
        ),
        title: Text('Instagram',
            style: TextStyle(
                fontFamily: 'Lobster', fontSize: 30, color: Colors.black)),
        actions: <Widget>[
          InkWell(
            child: Icon(MdiIcons.emailOpen),
            onTap: () {
              print("click search");
            },
          ),
          SizedBox(width: 32)
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView(
                children: <Widget>[
                  getStory(),
                  Container(child: Divider()),
                  getUserPost(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget getStory() {
  return Container(
      margin: EdgeInsets.only(top: 12.0),
      height: 110.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: UserData().getStoryData(),
      ));
}

Widget getUserPost() {
  return Container(
    child: Column(children: UserData().getPostData()),
  );
}

class getPost extends StatefulWidget {
  getPost(
      {this.profilePicture, this.name, this.photo, this.caption, this.likes});

  final profilePicture;
  final name;
  final photo;
  final caption;
  final likes;
  @override
  _getPostState createState() => _getPostState();
}

class _getPostState extends State<getPost> {
  Color LikeColor;
  bool hasLike = true;
  bool like;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: CircleAvatar(
                    backgroundImage:
                        ExactAssetImage('${widget.profilePicture}'),
                    maxRadius: 25,
                  ),
                ),
              ),
              Container(
                child: Text(
                  '${widget.name}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 240),
              Container(child: Icon(MdiIcons.dotsHorizontal)),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 400,
          width: 420,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('${widget.photo}'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Container(
                child: GestureDetector(
                  onTap: () {
//                    setState:
//                    () {
//                      hasLike = hasLike ? false : true;
//                    };
                  },
                  child: Icon(
                    MdiIcons.heartOutline,
                    color: hasLike ? Colors.black : Colors.red,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Container(
                child: Icon(MdiIcons.commentOutline),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Container(
                child: Icon(MdiIcons.androidAuto),
              ),
            )
          ],
        ),
        SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Container(child: Text('${widget.likes} likes')),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(child: Text('${widget.caption}')),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}

class Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 10),
        Container(
          height: 1,
          color: Colors.black12,
          width: double.infinity,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

class circularStory extends StatelessWidget {
  circularStory({this.name, this.picture, this.hasStory, this.isFollowing});

  final name;
  final picture;
  bool hasStory;
  bool isFollowing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(6.0),
          child: CircleAvatar(
            backgroundColor: hasStory ? Colors.red : Colors.grey,
            child: CircleAvatar(
              backgroundImage: ExactAssetImage('$picture'),
              maxRadius: 35,
            ),
            maxRadius: 38,
          ),
        ),
        Container(
            child: Text(
          '$name',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ))
      ],
    );
  }
}
