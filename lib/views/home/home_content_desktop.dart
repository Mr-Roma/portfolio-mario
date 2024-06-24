import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unique_portfolio/api/user_sheets_api.dart';
import 'package:unique_portfolio/widgets/desktop/contact_desktop.dart';
import 'package:unique_portfolio/widgets/desktop/experience.dart';
import 'package:unique_portfolio/widgets/desktop/intro_widget.dart';
import 'package:unique_portfolio/widgets/desktop/portfolio.dart';
import 'package:unique_portfolio/widgets/desktop/skill.dart';
import 'package:unique_portfolio/widgets/desktop/sosmed.dart';
import 'package:unique_portfolio/widgets/lamp_animation_tv.dart';
import 'package:unique_portfolio/widgets/navigation_bar/navbar_logo.dart';

class HomeContentDesktop extends StatelessWidget {
  HomeContentDesktop({Key? key}) : super(key: key);
  final GlobalKey introKey = GlobalKey();
  final GlobalKey experienceKey = GlobalKey();
  final GlobalKey skillKey = GlobalKey();
  final GlobalKey portfolioKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            key: introKey,
            children: [
              Text(
                'INTRODUCE',
                style: GoogleFonts.anton(fontSize: 40),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset("assets/icons/image.png"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/images/tv.png",
                              scale: 1.3,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 659, top: 257),
                              child: ValueListenableBuilder<bool>(
                                valueListenable: NavBarLogo.logoPressedNotifier,
                                builder: (context, logoPressed, child) {
                                  return LampAnimationDesktop(
                                    color:
                                        logoPressed ? Colors.green : Colors.red,
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 180, left: 110),
                              child: TyperAnimatedTextKit(
                                pause: Duration(seconds: 2),
                                text: ["ROMA"],
                                textStyle: GoogleFonts.anton(
                                  fontSize: 90,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                                isRepeatingAnimation: true,
                                repeatForever: true,
                                speed: const Duration(milliseconds: 500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 280, left: 150),
                              child: TyperAnimatedTextKit(
                                text: ["RIO"],
                                textStyle: GoogleFonts.anton(
                                  fontSize: 90,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                                isRepeatingAnimation: true,
                                repeatForever: true,
                                speed: const Duration(milliseconds: 1000),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 200, left: 400),
                              child: TyperAnimatedTextKit(
                                text: ["MAR"],
                                pause: Duration(seconds: 2),
                                textStyle: GoogleFonts.anton(
                                  fontSize: 90,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.start,
                                isRepeatingAnimation: true,
                                repeatForever: true,
                                speed: const Duration(milliseconds: 500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 295, left: 430),
                              child: TyperAnimatedTextKit(
                                text: ["CAL"],
                                textStyle: GoogleFonts.anton(
                                  fontSize: 90,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.start,
                                isRepeatingAnimation: true,
                                repeatForever: true,
                                speed: const Duration(milliseconds: 1000),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 95, left: 235),
                                child: Animate(
                                  child:
                                      Image.asset('assets/images/profile.png'),
                                ).fadeIn()),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 400,
                              ),
                              child: Animate(
                                child: Image.asset(
                                  'assets/images/camera.png',
                                  scale: 1.2,
                                ),
                                onPlay: (controller) => controller.repeat(
                                    period: Duration(seconds: 2)),
                              ).shake(duration: Duration(seconds: 1)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IntroWidget(),
                    SosMed(),
                    Image.asset('assets/icons/separator.png'),
                    SizedBox(
                      height: 40,
                    ),
                    WorkingExperience(
                      key: experienceKey,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Image.asset('assets/icons/separator.png'),
                    SizedBox(
                      height: 40,
                    ),
                    SkillWidget(
                      key: skillKey,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Image.asset('assets/icons/separator.png'),
                    SizedBox(
                      height: 40,
                    ),
                    PortfolioWidget(
                      key: portfolioKey,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Image.asset('assets/icons/separator.png'),
                    SizedBox(
                      height: 40,
                    ),
                    ContactDesktop(
                      onSavedUser: (user) async {
                        await UserSheetsApi.insert([user.toJson()]);
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
