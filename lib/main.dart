import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDice = 1;
  int rigthDice = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('NavBar'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  leftDice = Random().nextInt(6) + 1;
                  rigthDice = Random().nextInt(6) + 1;
                  setState(() {});
                },
                child: Image.asset(
                  'assets/images/dice$leftDice.png',
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  leftDice = Random().nextInt(6) + 1;
                  rigthDice = Random().nextInt(6) + 1;
                  setState(() {});
                },
                child: Image.asset(
                  'assets/images/dice$rigthDice.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }