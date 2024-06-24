// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:unique_portfolio/widgets/centered_view/centered_view.dart';

class HistelContent extends StatelessWidget {
  const HistelContent({super.key});

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
                  '"HISTEL (TIMOR-LESTE HISTORY MOBILE APPLICATION)"',
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
                    _TextTityle(
                        title: 'Client/Company', description: 'Romario Gajog'),
                    _TextTityle(
                        title: 'Category Project', description: 'Mobile App'),
                    _TextTityle(title: 'Industry', description: 'History'),
                    _TextTityle(
                        title: 'Project Time', description: 'On Development'),
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
                    'assets/images/histel2.png',
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
                          '1. Design the App',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '2. Slicing',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '3. Functionalisties Integration',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '4. Set Up Monitoring',
                        ),
                        Text(
                          '4. Set Up Monitoring',
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
                    'Histel App is a mobile application project that offers various unique learning features about the history experienced by Timor-Leste.'),
                SizedBox(
                  height: 20,
                ),
                StartText(title: 'What is Histel?'),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/histel3.png',
                  scale: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "For those who don't know, the unique features in the Histel app consist of several important features, such as game feature, historical photo feature, chatbot feature, chat community, article feature, documentation feature, and several other important features."),
                SizedBox(
                  height: 20,
                ),
                StartText(title: 'Problem Statement'),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "When I saw that there was no online platform in Timor-Leste that could present the complete history of Timor-Leste, I saw this as a root problem that needed to be addressed using technology, specifically by creating a mobile-based application called Histel App."),
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
                StartText(title: "1. Design the App"),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/histel1.png',
                  scale: 1,
                ),
                SizedBox(
                  height: 20,
                ),
                StartText(title: "2. Slicing"),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/histel4.png',
                  scale: 3.5,
                ),
                SizedBox(
                  height: 20,
                ),
                StartText(title: "3. Functionalities Integration"),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/histel5.png',
                  scale: 2.2,
                ),
                SizedBox(
                  height: 20,
                ),
                StartText(title: "4. Set Up Monitoring"),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/histel6.png',
                  scale: 1.9,
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
