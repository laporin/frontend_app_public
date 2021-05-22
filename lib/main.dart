import 'package:flutter/material.dart';
import 'package:frontend_app_public/di/injection.dart';
import 'package:frontend_app_public/env/env.dart';
import 'package:frontend_app_public/screen/app.dart';

void main() {
  configureDependencies();
  print(Env.key);
  // print(Env.ho);
  runApp(App());
}
