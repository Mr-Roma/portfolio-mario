import 'dart:async';
import 'package:flutter/material.dart';

class HeartAnimation extends StatefulWidget {
  const HeartAnimation({Key? key}) : super(key: key);

  @override
  _HeartAnimationState createState() => _HeartAnimationState();
}

class _HeartAnimationState extends State<HeartAnimation> {
  int currentAvatarIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    _timer = Timer.periodic(Duration(milliseconds: 1000), (Timer timer) {
      setState(() {
        currentAvatarIndex = (currentAvatarIndex + 1) % 3;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipPath(
        clipper: HeartClipper(),
        child: Container(
          width: 30,
          height: 30,
          color: Colors.red.withOpacity(.0),
          child: AnimatedOpacity(
            opacity: currentAvatarIndex > 0 ? 1.0 : 0.0,
            duration: Duration(milliseconds: 1000),
            child: Container(
              color: Colors.red.withOpacity(.4),
              child: AnimatedOpacity(
                opacity: currentAvatarIndex > 1 ? 1.0 : 0.0,
                duration: Duration(milliseconds: 1000),
                child: Container(
                  color: Colors.red.withOpacity(.9),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HeartClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.moveTo(size.width / 2, size.height / 3);
    path.cubicTo((size.width * 6) / 7, size.height / 9, (size.width * 13) / 13,
        (size.height * 2) / 5, size.width / 2, (size.height * 7) / 9);
    path.cubicTo(size.width / 13, (size.height * 2) / 5, (size.width * 2) / 7,
        size.height / 9, size.width / 2, size.height / 3);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
