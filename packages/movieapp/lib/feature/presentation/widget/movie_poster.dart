import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  final double? height;
  final double? width;

  final String url;
  const MoviePoster({Key? key, required this.url, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: width ?? 150,
        height: height ?? 250,
        child: Image.network(
          url,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
