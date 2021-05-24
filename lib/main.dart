import 'package:flutter/material.dart';
import 'package:frontend_app_public/config/di/injection.dart';
import 'package:frontend_app_public/screen/app.dart';

void main() {
  configureDependencies();
  runApp(App());
}
