import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 45,
            width: 45,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/user.png'),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Welcome'),
              Text(
                'Kim Na Young',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 28,
                width: 28,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/user.png'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
