import 'package:flutter/material.dart';

class CleanButton extends StatelessWidget {
  final Function()? onPressed;
  const CleanButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black, // background (button) color
        foregroundColor: Colors.white, // foreground (text) color
      ),
      child: const Text('Click Me'),
    );
  }
}
