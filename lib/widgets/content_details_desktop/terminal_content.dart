// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:unique_portfolio/widgets/centered_view/centered_view.dart';

class TerminalContent extends StatelessWidget {
  const TerminalContent({super.key});

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
                  '"TERMINAL PORTFOLIO (AUTHENTIC WEB APP DESIGN)"',
                  style: GoogleFonts.anton(fontSize: 32),
                ),
                StartText(title: 'WEB APP'),
                SizedBox(
                  height: 20,
                ),
                Image.asset('assets/icons/separator.png'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _TextTityle(
                        title: 'Client/Company', description: 'Romario Gajog'),
                    _TextTityle(
                        title: 'Category Project', description: 'Web App'),
                    _TextTityle(title: 'Industry', description: 'Portfolio'),
                    _TextTityle(title: 'Project Time', description: 'Finished'),
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
                    'assets/images/terminal1.png',
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
                          'What is Histel?',
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
                          '1. Design & Slicing the App',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '2. Functionalisties Integration',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '3. Set Up Monitoring',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '4. Deployment',
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
                    "Terminal Portfolio is a unique design inspiration that I created to symbolize pride as someone involved in the world and tech industry."),
                SizedBox(
                  height: 20,
                ),
                StartText(title: 'What is Terminal Portfolio?'),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/terminal2.png',
                  scale: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "In this Web app Portfolio, you guys can discover the uniqueness and workflow of a terminal typically found on desktops, visualized through this portfolio interaction. You will interact with various command instructions such as: ls, bio, skills, fun fact, projects, skills, and clear."),
                SizedBox(
                  height: 20,
                ),
                StartText(title: 'Problem Statement'),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "This is one of the personal project that i build in order to solve my own problems, which is to prepare myself for applying in internship and others freelances jobs, as well as support my Influencer works."),
                SizedBox(
                  height: 20,
                ),
                StartText(title: "What I've done..."),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Basically, I am the person behind the creation of the Histel application, where I myself took on roles ranging from designing the application interface, being the developer who sliced and integrated the database and the application online"),
                SizedBox(
                  height: 20,
                ),
                StartText(title: "1. Design & Slicing the App"),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/terminal3.png',
                  scale: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                StartText(title: "2. Functionalities Integration"),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/terminal4.png',
                  scale: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                StartText(title: "3. Set Up Monitoring"),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/terminal5.png',
                  scale: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                StartText(title: "4. Deployment"),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/terminal6.png',
                  scale: 2,
                ),
                SizedBox(
                  height: 40,
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
