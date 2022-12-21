import 'package:flutter/material.dart';

class FloatingBottomNav extends StatelessWidget {
  const FloatingBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(12)),
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 35),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          SizedBox(
            child: Icon(
              Icons.home,
              color: Colors.deepPurpleAccent,
              size: 30,
            ),
          ),
          SizedBox(
            child: Icon(
              Icons.calendar_today,
              color: Colors.white,
              size: 30,
            ),
          ),
          SizedBox(
            child: Icon(
              Icons.airplane_ticket_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(
            child: Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
