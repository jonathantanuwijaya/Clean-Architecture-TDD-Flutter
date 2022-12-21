import 'package:flutter/material.dart';
import 'package:movieapp/feature/presentation/app.widget.dart';
import 'package:movieapp/injection.dart';

void main() {
  configureInjection();
  runApp(const AppWidget());
}
