import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unique_portfolio/widgets/circle_avatar.dart';
import 'package:visibility_detector/visibility_detector.dart';

class WorkingExperience extends StatefulWidget {
  const WorkingExperience({Key? key}) : super(key: key);

  @override
  _WorkingExperienceState createState() => _WorkingExperienceState();
}

class _WorkingExperienceState extends State<WorkingExperience>
    with TickerProviderStateMixin {
  late final AnimationController _controller1;
  late final AnimationController _controller2;
  late final AnimationController _controller3;
  late final AnimationController _controller4;
  late final AnimationController _controller5;
  late final AnimationController _controller6;

  @override
  void initState() {
    super.initState();

    _controller1 = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _controller2 = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _controller3 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _controller4 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _controller5 = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _controller6 = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'WORKING EXPERIENCE',
              style: GoogleFonts.anton(fontSize: 40),
            ),
            SizedBox(
              width: 10,
            ),
            Animate(child: Image.asset("assets/icons/workexperience.png")),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Text(
            'With years of learning experiences that have taken me through an inspiring journey, I have arrived at point where I am growing up fast like today.'),
        Text(
            'Below is the list of places where i have taken important steps in my learning journey...'),
        SizedBox(
          height: 40,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VisibilityDetector(
                  key: Key('image1'),
                  onVisibilityChanged: (visibilityInfo) {
                    var visiblePercentage =
                        visibilityInfo.visibleFraction * 100;
                    if (visiblePercentage == 100) {
                      _controller1.forward();
                    }
                  },
                  child: FadeTransition(
                    opacity: _controller1,
                    child: Stack(
                      children: [
                        Bounceable(
                          onTap: () {},
                          child: Image.asset('assets/images/motion_lab.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 27, left: 7),
                          child: CircleAvatarAnimation(),
                        ),
                      ],
                    ),
                  ),
                ),
                VisibilityDetector(
                  key: Key('image2'),
                  onVisibilityChanged: (visibilityInfo) {
                    var visiblePercentage =
                        visibilityInfo.visibleFraction * 100;
                    if (visiblePercentage == 100) {
                      _controller2.forward();
                    }
                  },
                  child: FadeTransition(
                    opacity: _controller2,
                    child: Bounceable(
                      onTap: () {},
                      child: Image.asset('assets/images/cci.png'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VisibilityDetector(
                  key: Key('image3'),
                  onVisibilityChanged: (visibilityInfo) {
                    var visiblePercentage =
                        visibilityInfo.visibleFraction * 100;
                    if (visiblePercentage == 100) {
                      _controller3.forward();
                    }
                  },
                  child: FadeTransition(
                    opacity: _controller3,
                    child: Stack(
                      children: [
                        Bounceable(
                          onTap: () {},
                          child: Image.asset('assets/images/influencer.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16, left: 8),
                          child: CircleAvatarAnimation(),
                        ),
                      ],
                    ),
                  ),
                ),
                VisibilityDetector(
                  key: Key('image4'),
                  onVisibilityChanged: (visibilityInfo) {
                    var visiblePercentage =
                        visibilityInfo.visibleFraction * 100;
                    if (visiblePercentage == 100) {
                      _controller4.forward();
                    }
                  },
                  child: FadeTransition(
                    opacity: _controller4,
                    child: Stack(
                      children: [
                        Bounceable(
                          onTap: () {},
                          child: Image.asset('assets/images/informatics.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16, left: 8),
                          child: CircleAvatarAnimation(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VisibilityDetector(
                  key: Key('image5'),
                  onVisibilityChanged: (visibilityInfo) {
                    var visiblePercentage =
                        visibilityInfo.visibleFraction * 100;
                    if (visiblePercentage == 100) {
                      _controller5.forward();
                    }
                  },
                  child: FadeTransition(
                    opacity: _controller5,
                    child: Stack(
                      children: [
                        Bounceable(
                          onTap: () {},
                          child: Image.asset('assets/images/gdsc.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 14, left: 15),
                          child: CircleAvatarAnimation(),
                        ),
                      ],
                    ),
                  ),
                ),
                VisibilityDetector(
                  key: Key('image6'),
                  onVisibilityChanged: (visibilityInfo) {
                    var visiblePercentage =
                        visibilityInfo.visibleFraction * 100;
                    if (visiblePercentage == 100) {
                      _controller6.forward();
                    }
                  },
                  child: FadeTransition(
                    opacity: _controller6,
                    child: Stack(
                      children: [
                        Bounceable(
                          onTap: () {},
                          child: Image.asset('assets/images/umaamerika.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
