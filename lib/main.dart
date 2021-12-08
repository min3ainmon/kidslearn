import 'package:flutter/material.dart';
import 'package:kids_learn/page/controller.dart';
import 'utilities/constant.dart';
import 'page/controller.dart';
import 'page/home_page.dart';

void main() {
  runApp(KidsLearn());
}

class KidsLearn extends StatelessWidget {
  const KidsLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kPageBackgroundColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ControllerPage(),
        // '/alphabetlearningpage': (context) => AlphabetLearningPage(),
        // '/animallearningpage': (context) => AnimalLearningPage(),
        // '/quizpage': (context) => AnimalQuizPage(),
      },
    );
  }
}
