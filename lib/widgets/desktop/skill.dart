import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class SkillWidget extends StatefulWidget {
  const SkillWidget({Key? key}) : super(key: key);

  @override
  _SkillWidgetState createState() => _SkillWidgetState();
}

class _SkillWidgetState extends State<SkillWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, -1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void startAnimation() {
    _controller.forward(from: 0.0);
  }

  void stopAnimation() {
    _controller.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'SKILL SET',
              style: GoogleFonts.anton(fontSize: 40),
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset("assets/icons/skill.png"),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Text(
            'With spirit to continuously renew myself in the world of technology, I have adopted various'),
        Text(
            'cutting-edge tools and technology into my works. Here are some of the technologies,'),
        Text('I have been used : '),
        SizedBox(
          height: 20,
        ),
        VisibilityDetector(
          key: Key('skill_visibility_detector'),
          onVisibilityChanged: (VisibilityInfo info) {
            if (info.visibleFraction == 1.0) {
              startAnimation();
            } else {
              stopAnimation();
            }
          },
          child: FadeTransition(
            opacity: _controller,
            child: SlideTransition(
              position: _offsetAnimation,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Bounceable(
                    onTap: () {},
                    child: Image.asset("assets/images/skill_set.png"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
