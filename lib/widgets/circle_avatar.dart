import 'dart:async';
import 'package:flutter/material.dart';

class CircleAvatarAnimation extends StatefulWidget {
  const CircleAvatarAnimation({Key? key}) : super(key: key);

  @override
  _CircleAvatarAnimationState createState() => _CircleAvatarAnimationState();
}

class _CircleAvatarAnimationState extends State<CircleAvatarAnimation> {
  int currentAvatarIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // Start the animation timer
    _startAnimation();
  }

  void _startAnimation() {
    // Initialize and start the animation timer
    _timer = Timer.periodic(Duration(milliseconds: 1000), (Timer timer) {
      setState(() {
        // Increment currentAvatarIndex to switch to the next CircleAvatar
        currentAvatarIndex = (currentAvatarIndex + 1) % 3;
      });
    });
  }

  @override
  void dispose() {
    // Cancel the animation timer when the widget is disposed
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 7,
        backgroundColor: Colors.red.withOpacity(.0),
        child: AnimatedOpacity(
          opacity: currentAvatarIndex > 0 ? 1.0 : 0.0,
          duration: Duration(milliseconds: 1000),
          child: CircleAvatar(
            radius: 6,
            backgroundColor: Colors.red.withOpacity(.4),
            child: AnimatedOpacity(
              opacity: currentAvatarIndex > 1 ? 1.0 : 0.0,
              duration: Duration(milliseconds: 1000),
              child: CircleAvatar(
                radius: 4,
                backgroundColor: Colors.red.withOpacity(.5),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.red.withOpacity(.9),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
