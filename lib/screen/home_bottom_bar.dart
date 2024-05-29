import 'package:flutter/material.dart';

class homebottomBar extends StatelessWidget {
  const homebottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.home,
          color: Colors.orange,
          size: 35,
          ),
          Icon(Icons.favorite,
          color: Colors.white,
          size: 35,
          ),
          Icon(Icons.notifications,
          color: Colors.white,
          size: 35,
          ),
          Icon(Icons.person,
          color: Colors.white,
          size: 35,
          ),
        ],
      ),
    );
  }
}