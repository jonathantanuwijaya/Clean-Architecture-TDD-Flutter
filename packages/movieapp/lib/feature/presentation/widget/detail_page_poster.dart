import 'package:flutter/material.dart';

class DetailPagePoster extends StatelessWidget {
  final String urlPic;

  const DetailPagePoster({Key? key, required this.urlPic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.network(
        urlPic,
        fit: BoxFit.fill,
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width * 0.8,
      ),
    );
  }
}
