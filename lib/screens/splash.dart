import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.sports_soccer,
          size: MediaQuery.of(context).size.width * 0.785,
        ),
      ),
    );
  }
}
