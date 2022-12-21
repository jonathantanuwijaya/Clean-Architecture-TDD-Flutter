import 'package:flutter/material.dart';
import 'package:movieapp/feature/presentation/widget/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: SignInForm(),
    );
  }
}
