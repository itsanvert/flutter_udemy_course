import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Quiz App',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 78, 13, 151),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
                color: Colors.white,
              ),

              // Opacity(
              //   opacity: 0.6,
              //   child: Image.asset('assets/images/quiz-logo.png', width: 300),
              // ),
              const SizedBox(height: 80),
              Text(
                'Learn Flutter the fun way!',
                style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(height: 30),
              OutlinedButton.icon(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                icon: Icon(Icons.arrow_right_alt),
                label: const Text('Start Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
