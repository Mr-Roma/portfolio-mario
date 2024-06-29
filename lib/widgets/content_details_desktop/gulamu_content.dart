// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:unique_portfolio/widgets/centered_view/centered_view.dart';
import 'package:url_launcher/url_launcher.dart';

class GulamuContent extends StatelessWidget {
  const GulamuContent({super.key});

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
                  '"GULAMU (YOUR SUGAR CONTROL PARTNER)"',
                  style: GoogleFonts.anton(fontSize: 32),
                ),
                StartText(title: 'ANDROID APP'),
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
                    _TextTityle(title: 'Group', description: 'TIM 10'),
                    _TextTityle(
                        title: 'Category Project', description: 'Mobile App'),
                    _TextTityle(
                        title: 'Industry',
                        description: 'Hackathon Competition'),
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
                    'assets/images/gulamu1.png',
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
                          'What is Gulamu?',
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
                          '1. Slicing the App',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '2. Functionalities Integration',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '3. Documentation Code',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '4. Video Documentation',
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
                    'Gulamu is a mobile application that help the users to track their sugar consumption in real time.'),
                SizedBox(
                  height: 20,
                ),
                StartText(title: 'What is Gulamu?'),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/gulamu2.png',
                  scale: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "An application that can provide users' blood sugar consumption data:"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("- Reducing Diabetes"),
                    Text("- Patients reducing the risk of heart attacks"),
                    Text("- Having a healthy body"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                StartText(title: 'Problem Statement'),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "According to data from the Institute for Health Metrics and Evaluation: diabetes mellitus is one of the chronic diseases that is the third highest cause of death in Indonesia in 2019, around 57.42 deaths per 100,000 population. Excessive daily sugar consumption exceeds the recommended limit."),
                SizedBox(
                  height: 20,
                ),
                StartText(title: "What I've done..."),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "As a Team Lead and Developer, I have accomplished several important tasks, from leading the team to developing the Gulamu application itself. Here are the details of what I have done in this project:"),
                SizedBox(
                  height: 20,
                ),
                StartText(title: "1. Slicing the App"),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/gulamu5.png',
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
                  'assets/images/gulamu3.png',
                  scale: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                StartText(title: "3. Documentation Code"),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/gulamu4.png',
                  scale: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                StartText(title: "4. Video Documentation"),
                SizedBox(
                  height: 50,
                ),
                LinkText(
                  title: 'Video Documentation',
                  url:
                      'https://www.facebook.com/share/v/Dhbq8GdmcEHQpLHZ/?mibextid=WC7FNe',
                ),
                SizedBox(
                  height: 50,
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

class LinkText extends StatefulWidget {
  final String title;
  final String url;

  const LinkText({
    Key? key,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  _LinkTextState createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) => setState(() => _isHovered = true),
      onExit: (event) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () async {
          if (await canLaunch(widget.url)) {
            await launch(widget.url);
          } else {
            throw 'Could not launch ${widget.url}';
          }
        },
        child: Text(
          widget.title,
          style: TextStyle(
            color: _isHovered ? Colors.blue : Colors.blue,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
