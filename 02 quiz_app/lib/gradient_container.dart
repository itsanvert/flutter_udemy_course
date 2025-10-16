import 'package:flutter/material.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'continune_button.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  final Color color1 = const Color.fromARGB(255, 78, 13, 151);
  final Color color2 = const Color.fromARGB(255, 107, 15, 168);

  void _startQuiz(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (ctx) => const QuestionsScreen()));
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Welcome to Quiz App!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Test your knowledge with our interactive quiz',
                style: TextStyle(color: Colors.white70, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ContinuneButton(onTap: () => _startQuiz(context)),
            ],
          ),
        ),
      ),
    );
  }
}
