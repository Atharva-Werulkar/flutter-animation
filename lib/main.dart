import 'package:flutter/material.dart';
import 'package:flutter_buttons/btneffect1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: AnimatedButtonDemo(),
    );
  }
}

class AnimatedButtonDemo extends StatefulWidget {
  const AnimatedButtonDemo({super.key});

  @override
  _AnimatedButtonDemoState createState() => _AnimatedButtonDemoState();
}

class _AnimatedButtonDemoState extends State<AnimatedButtonDemo> {
  bool isButtonSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Button Demo'),
      ),
      body: Center(
        child: MyAnimatedButton(),
      ),
    );
  }
}
