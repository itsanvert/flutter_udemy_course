import 'package:flutter/material.dart';

class ColorText extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 26, 2, 80),
          ],
        ),
      ),
    );
  }
}
