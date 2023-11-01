import 'package:flutter/material.dart';

class MyAnimatedButton extends StatefulWidget {
  @override
  _MyAnimatedButtonState createState() => _MyAnimatedButtonState();
}

class _MyAnimatedButtonState extends State<MyAnimatedButton> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          _isTapped = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          _isTapped = false;
        });
      },
      onTap: () {
        // Handle button click here
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCirc,
        padding:
            _isTapped ? const EdgeInsets.all(16.0) : const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: _isTapped ? Colors.white : Colors.black,
          borderRadius: BorderRadius.circular(_isTapped ? 25.0 : 30.0),
        ),
        child: Text(
          'Click Me',
          style: TextStyle(
            color: _isTapped ? Colors.black : Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
