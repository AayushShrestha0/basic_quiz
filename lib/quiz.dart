import 'package:flutter/material.dart';
import 'package:quiz_basics/questions_screen.dart';
import 'package:quiz_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  var activeScreen = 'start-screen';
  // @override
  // void initState() {
  //   // activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  switchScreen() {
    setState(() {
      activeScreen = 'quiz-screen';
      // activeScreen = const QuestionsScreen();
    });
  }

  //value accepts switchscreen method, when the button is pressed on start screen then switch screen method is called
  //and thenthe active screen value changes, and the build method is executed, thus the screen changes

  @override
  Widget build(context) {
    // var screenWidget = activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionsScreen() ;
    Widget screenWidget = StartScreen((switchScreen));
    if (activeScreen == 'quiz-screen') {
      screenWidget = QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple.shade700,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple.shade800, Colors.deepPurple.shade300],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
