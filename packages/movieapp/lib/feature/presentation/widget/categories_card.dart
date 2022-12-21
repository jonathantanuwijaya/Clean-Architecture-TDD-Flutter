import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  final String text;
  final Color? color;
  final double? width;
  final double? height;
  const CategoriesCard({Key? key, required this.text, this.color, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          color: color ?? Colors.blueGrey[800],
          height: height ?? 25,
          width: width ?? 90,
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
