import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final List names = [
    "Made For You", "New Releases", "English", "Korean", "Chinese", "Japanese", "Tamil", "Telugu",
  ];
  Color color(int index) {
    List<Color> colors = [
      Colors.red, Colors.green, Colors.blue, Colors.orange, Colors.purple,
      Colors.yellow, Colors.teal, Colors.cyan, Colors.indigo, Colors.lime
    ];
    return colors[index % colors.length];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 14,right: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Row(
                  children: [
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
                      "Search",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(width: 230),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 25,
                    )
                  ],
                ),
                SizedBox(height: 25,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "What do you want to listen to?",
                    hintStyle: TextStyle(
                      color: Colors.black, // Hint text color
                      fontSize: 16,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                    fillColor: Colors.white, // Fill color
                    filled: true, // Enable fill color
                  ),
                ),
            SizedBox(height: 18),
            Text(
              "Start browsing",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
                SizedBox(height: 18),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Prevent scrolling inside the GridView
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2
                  ),
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: color(index),
                      ),
                      child: Text(
                        names[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
