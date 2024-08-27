import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contain extends StatelessWidget {
  final String txt1;
  final String txt2;

  Contain({required this.txt1, required this.txt2, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white12),
          child: Center(
              child: Text(
            txt1,
            style: TextStyle(
                color: Colors.white70,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          )),
        ),
        SizedBox(
          width: 13,
        ),
        Container(
          width: 80,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white12),
          child: Center(
              child: Text(
            txt2,
            style: TextStyle(
                color: Colors.white70,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          )),
        )
      ],
    );
  }
}
