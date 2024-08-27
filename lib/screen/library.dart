import 'package:flutter/material.dart';
import 'package:spotifyy/widget/contain.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(width: 20),
              CircleAvatar(
                radius: 15,
                child: Text(
                  "K",
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Text(
                "Your Library",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Spacer(),
              Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.add,
                color: Colors.white,
                size: 35,
              ),
              SizedBox(width: 20),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Contain(txt1: "Playlists", txt2: "Artists"),
          ),
          SizedBox(
            height: 2,
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.compare_arrows,
                      color: Colors.white,
                      size: 18,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Recents",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.grid_view,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.indigo, // Start color
                            Colors.indigo.shade200, // Middle color
                            Colors.white, // End color
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ),
                    SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Liked Songs",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.push_pin,
                              color: Colors.green,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Playlist.55 songs",
                              style: TextStyle(color: Colors.white70,fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/img9.png"),
                    ),
                    SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                          "Exo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Artist",
                          style: TextStyle(color: Colors.white70,fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/img10.png"),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                          "Justin Bieber",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Artist",
                          style: TextStyle(color: Colors.white70,fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.white24,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 35,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                    SizedBox(width: 18),
                    Text(
                      "Add artists",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        color: Colors.white24,
                        child:  Center(
                          child: Icon(
                            Icons.add,
                            size: 35,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                      SizedBox(width: 18),
                      Text(
                        "Add Podcast",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
