import 'package:flutter/material.dart';
import 'package:spotifyy/widget/contain.dart';
import 'package:spotifyy/widget/imgg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Map<String, String>> music = [
    {
      "image": "assets/img1.png",
      "title": "Celestial",
      "subtitle": "Song.Ed Sheeran"
    },
    {
      "image": "assets/img2.png",
      "title": "No Time To Die",
      "subtitle": "Song.Billie Elish"
    },
    {
      "image": "assets/img3.png",
      "title": "Ice Cream",
      "subtitle": "Album.Blackpink"
    },
  ];

  final List<Map<String, String>> recmus = [
    {
      "image": "assets/img4.png",
      "title": "Sugar and Brownies",
      "subtitle": "Songs.Dharia"
    },
    {
      "image": "assets/img5.png",
      "title": "My World",
      "subtitle": "Album.Justin Bieber"
    },
    {
      "image": "assets/img6.png",
      "title": "Apple Of My Eye",
      "subtitle": "Album.あの 頃、 君 を 追いかけた"
    },
  ];

  final List<Map<String, String>> remus = [
    {
      "image": "assets/img7.png",
      "title": "LoveSick Girls",
      "subtitle": "Songs.Blackpink"
    },
    {
      "image": "assets/img8.png",
      "title": "Call Me Baby",
      "subtitle": "Song.EXO"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          key: _scaffoldKey,
          drawer: Drawer(
           backgroundColor: Colors.black,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
              Container(
              height: 70, // Set a smaller height
              color: Colors.black,
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Text(
                      "K",
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text(
                        'KIM',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'View profile',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.add, size: 30, color: Colors.white),
                  title: Text('Add account',
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                ),
                ListTile(
                  leading:
                  Icon(Icons.av_timer_sharp, size: 30, color: Colors.white),
                  title: Text('Listening history',
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                ),
                ListTile(
                  leading:
                  Icon(Icons.settings_sharp, size: 30, color: Colors.white),
                  title: Text('Settings',
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                ),
              ],
            ),
          ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      _scaffoldKey.currentState?.openDrawer();

                    },
                    child: CircleAvatar(
                      radius: 18,
                      child: Text(
                        "K",
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 13),
                  Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 13),
                  Contain(txt1: "Music", txt2: "Podcast")
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Discover picks for You",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Imgg(itemList: music),
              SizedBox(height: 30,),
              Text(
                "Recommended for You",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(height: 30,),
              Imgg(itemList: recmus),
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 30,),
              Text(
                "Recently played",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(height: 30,),
              Imgg(itemList: remus)
            ],
          ),
        ),
      ),
    ));
  }
}
