import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final Function submitting;
  // final Function validator;
  final TextEditingController controller;
  const SearchBar(
      {Key? key, required this.submitting, required this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          color: Colors.blueGrey[800],
          child: TextFormField(
            controller: controller,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                suffixIcon: Icon(
                  Icons.mic,
                  color: Colors.grey,
                ),
                fillColor: Colors.white,
                hintText: 'search movie',
                border: InputBorder.none),
            onFieldSubmitted: (value) {
              submitting();
            },
            // validator: (value){
            //   value!.isEmpty ? 'Tidak Boleh Kosong' : null;
            //   validator();
            // }
          ),
        ),
      ),
    );
  }
}
