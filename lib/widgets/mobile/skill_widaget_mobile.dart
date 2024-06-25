import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unique_portfolio/widgets/heart_animation.dart';

class SkillWidgetMobile extends StatelessWidget {
  const SkillWidgetMobile({super.key});

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
            Animate(child: Image.asset("assets/icons/skill.png")),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Text(
            'With spirit to continuosly renew myself in the world of technology, I have adopted various cutting-edge tools and technology into my works. Here are some of the technologies, I have been used :'),
        SizedBox(
          height: 20,
        ),
        Bounceable(
          onTap: () {},
          child: Animate(
            child: Stack(
              children: [
                Image.asset('assets/images/mobile_skils.png'),
                Positioned(
                  top: 245,
                  left: 25,
                  child: HeartAnimation(),
                ),
                Positioned(
                  top: 442,
                  left: 25,
                  child: HeartAnimation(),
                ),
                Positioned(
                  top: 662,
                  left: 25,
                  child: HeartAnimation(),
                ),
                Positioned(
                  top: 662,
                  left: 220,
                  child: HeartAnimation(),
                ),
                Positioned(
                  top: 858,
                  left: 220,
                  child: HeartAnimation(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
