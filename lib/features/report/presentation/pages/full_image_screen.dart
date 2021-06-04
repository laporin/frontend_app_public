import 'package:flutter/material.dart';

class FullImageScreen extends StatelessWidget {
  final String url;

  const FullImageScreen({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(
        child: Center(
          child: Image.network(url),
        ),
      ),
    );
  }
}
