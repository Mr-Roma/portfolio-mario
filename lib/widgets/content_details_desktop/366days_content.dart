// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:unique_portfolio/widgets/centered_view/centered_view.dart';

class CodingContent extends StatelessWidget {
  const CodingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: CenteredView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Bounceable(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Center(
                          child: Text(
                            'Back',
                            style: GoogleFonts.anton(
                                fontSize: 12, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '"366 DAYS CODING CHALLENGE (CODING CONSISTENCY)"',
                  style: GoogleFonts.anton(fontSize: 32),
                ),
                StartText(title: 'CODING CHALLENGE'),
                SizedBox(
                  height: 20,
                ),
                Image.asset('assets/icons/separator.png'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _TextTityle(
                        title: 'Client/Company', description: 'Romario Gajog'),
                    _TextTityle(
                        title: 'Category Project',
                        description: 'Coding Challenge'),
                    _TextTityle(
                        title: 'Client/Company', description: 'Portfolio'),
                    _TextTityle(
                        title: 'Category Project', description: 'On Process'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset('assets/icons/separator.png'),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: 300,
                  child: Image.asset(
                    'assets/images/coding1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 800,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contents',
                          style: GoogleFonts.anton(
                              fontSize: 12, color: Colors.black),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Overview',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'What is 366 Days Coding Challenge?',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Problem Statements',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "What I've Done",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '1. Solving Coding Problems & Contributing in CodeWars Platform',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                StartText(title: 'Overview'),
                SizedBox(
                  height: 20,
                ),
                Text(
                    '366 Days Coding Challenge is a self-project that i made in 2024, to challenge myself to code everyday and to trained my logic and understanding into another level of programming.'),
                SizedBox(
                  height: 20,
                ),
                StartText(title: 'What is 366 Days Coding Challenge?'),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/coding2.png',
                  scale: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "In this project not also as a challenge project for me, but it also as a source projects for other people especially my followers, in order to follow my footsteps, to challenge themselves to code everyday."),
                SizedBox(
                  height: 20,
                ),
                StartText(title: 'Problem Statement'),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "This is one of the personal projects that I built to solve my own problems. In my first semester, I struggled with my programming subjects because I was new to the world of informatics and programming. Therefore, I created this project with the hope of building a strong foundation of understanding in the world of programming."),
                SizedBox(
                  height: 20,
                ),
                StartText(title: "What I've done..."),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "I also have solved several coding challenges which I have pushed to my GitHub repository. Each file containing solved problems is labeled with the date of the coding challenge. I chose CodeWars as the online coding platform which served as the source of coding problems for this project."),
                SizedBox(
                  height: 20,
                ),
                StartText(
                    title:
                        "Solve Coding Problems & Contributing in CodeWars PLatform"),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/coding3.png',
                  scale: 2,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StartText extends StatelessWidget {
  final String title;
  const StartText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.anton(),
        )
      ],
    );
  }
}

class _TextTityle extends StatelessWidget {
  final String title;
  final String description;
  const _TextTityle({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.anton(),
        ),
        Text(description),
      ],
    );
  }
}
