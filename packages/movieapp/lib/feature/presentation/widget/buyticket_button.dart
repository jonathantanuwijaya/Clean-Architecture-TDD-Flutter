import 'package:flutter/material.dart';

class BuyTicket extends StatelessWidget {
  const BuyTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        height: 45,
        color: Colors.deepPurpleAccent,
        child: const Align(
          alignment: Alignment.center,
          child: Text('Buy Ticket',
              style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
