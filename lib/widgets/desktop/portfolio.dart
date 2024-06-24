import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unique_portfolio/widgets/content_details_desktop/366days_content.dart';
import 'package:unique_portfolio/widgets/content_details_desktop/gulamu_content.dart';
import 'package:unique_portfolio/widgets/content_details_desktop/histel_content.dart';
import 'package:unique_portfolio/widgets/content_details_desktop/terminal_content.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'PORTFOLIO',
                  style: GoogleFonts.anton(fontSize: 40),
                ),
                SizedBox(
                  width: 10,
                ),
                Animate(child: Image.asset("assets/icons/porto.png")),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset("assets/icons/dw_icon.png"),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'See All',
                      style: GoogleFonts.anton(color: Colors.black),
                    ),
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Colors.white)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Column(
          children: [
            Text(
                'In my portfolio, you will find projects that not only reflect technical expertise, but also creativity,'),
            Text(
                'each project is the result of a close collaboration between technological innovation and'),
            Text(
                'bussiness needs, creating solutions that deliver signficant impact for the users.'),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Bounceable(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HistelContent()));
              },
              child: Image.asset('assets/images/histel.png'),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'HISTEL APP',
                  style: GoogleFonts.anton(fontSize: 24),
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Text(
                      'SELF-PROJECT',
                      style: GoogleFonts.anton(),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/icons/dot.png'),
                    SizedBox(
                      width: 5,
                    ),
                    Text('2023 - Present', style: GoogleFonts.anton()),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    _ButtonCard(
                      title: 'Flutter',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'MongoDB',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'Firebase',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'NodeJS',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'Figma',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Bounceable(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GulamuContent()));
              },
              child: Image.asset('assets/images/gulamu.png'),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'GULAMU',
                  style: GoogleFonts.anton(fontSize: 24),
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Text(
                      'SELF-PROJECT',
                      style: GoogleFonts.anton(),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/icons/dot.png'),
                    SizedBox(
                      width: 5,
                    ),
                    Text('2023 - Present', style: GoogleFonts.anton()),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    _ButtonCard(
                      title: 'Flutter',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'MongoDB',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'Firebase',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'NodeJS',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'Figma',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Bounceable(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TerminalContent()));
              },
              child: Image.asset('assets/images/my_portfolio.png'),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TERMINAL PORTFOLIO',
                  style: GoogleFonts.anton(fontSize: 24),
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Text(
                      'SELF-PROJECT',
                      style: GoogleFonts.anton(),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/icons/dot.png'),
                    SizedBox(
                      width: 5,
                    ),
                    Text('2023 - Present', style: GoogleFonts.anton()),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    _ButtonCard(
                      title: 'Flutter',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'MongoDB',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'Firebase',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'NodeJS',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'Figma',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Bounceable(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CodingContent()));
              },
              child: Image.asset('assets/images/coding_challenge.png'),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '366 DAYS CODING CHALLENGE',
                  style: GoogleFonts.anton(fontSize: 24),
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Text(
                      'SELF-PROJECT',
                      style: GoogleFonts.anton(),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/icons/dot.png'),
                    SizedBox(
                      width: 5,
                    ),
                    Text('2023 - Present', style: GoogleFonts.anton()),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    _ButtonCard(
                      title: 'Flutter',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'MongoDB',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'Firebase',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'NodeJS',
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _ButtonCard(
                      title: 'Figma',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _ButtonCard extends StatelessWidget {
  final String title;
  const _ButtonCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.anton(color: Colors.black),
          ),
        ],
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        side: MaterialStateProperty.all(BorderSide(color: Colors.white)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
      ),
    );
  }
}
