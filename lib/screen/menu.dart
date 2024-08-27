import 'package:flutter/material.dart';
import 'package:spotifyy/screen/home.dart';
import 'package:spotifyy/screen/library.dart';
import 'package:spotifyy/screen/premium.dart';
import 'package:spotifyy/screen/search.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  final List page = [
  Home(),
  Search(),
  Library(),
  Premium()
  ];

  int select=0;

  void item(int index)
  {
    setState(() {
      select = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[select],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 24),
        currentIndex: select,
        onTap: item,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,),
              label: "Search"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books,),
              label: "Your Library"
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icn1.png")),
              label: "Premium"
          )
        ],
      ),
    );
  }
}
