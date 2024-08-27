import 'package:flutter/material.dart';

class Premium extends StatefulWidget {
  const Premium({super.key});

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                height: 230,
                child: Image.asset("assets/img11.png"),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Get Premium Individual",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Text(
                      "199 for 2 months, then 199 per month after. Offer only available if you haven't"
                      "tried Premium before.",
                      style: TextStyle(color: Colors.white70, fontSize: 13),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white10),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Text(
                              "Why join Premium?",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                              fontSize: 20),
                            ),
                            Divider(),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.music_note_outlined,color: Colors.white,),
                                SizedBox(width: 8,),
                                Text(
                                  "High audio quality",
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.download_for_offline_outlined,color: Colors.white,),
                                SizedBox(width: 8,),
                                Text(
                                  "Download to listen offline",
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                          ],
                        ),
        ]  ),
        ),
      ),
    ]))])))
    );
  }
}
