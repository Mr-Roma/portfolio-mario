import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unique_portfolio/widgets/content_details_mobile/366days_content_mobile.dart';
import 'package:unique_portfolio/widgets/content_details_mobile/gulamu_content_mobile.dart';
import 'package:unique_portfolio/widgets/content_details_mobile/histel_content_mobile.dart';
import 'package:unique_portfolio/widgets/content_details_mobile/terminal_content_mobile.dart';

class PortfolioWidgetMobile extends StatelessWidget {
  const PortfolioWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'PORTFOLIO',
                style: GoogleFonts.anton(fontSize: 40),
              ),
              Expanded(
                  child: Image.asset("assets/icons/porto.png", width: 100)),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'In my portfolio, you will find projects that not only reflect technical expertise, but also creativity, each project is the result of a close collaboration between technological innovation and business needs, creating solutions that deliver significant impact for the users.',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40),
          _buildProject(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HistelContentMobile()));
            },
            image: 'assets/images/histel.png',
            title: 'HISTEL APP',
            date: '2023 - Present',
          ),
          SizedBox(height: 20),
          _buildProject(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GulamuContentMobile()));
            },
            image: 'assets/images/gulamu.png',
            title: 'GULAMU',
            date: '2023 - Present',
          ),
          SizedBox(height: 20),
          _buildProject(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TerminalContentMobile()));
            },
            image: 'assets/images/my_portfolio.png',
            title: 'TERMINAL PORTFOLIO',
            date: '2023 - Present',
          ),
          SizedBox(height: 20),
          _buildProject(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CodingContentMobile()));
            },
            image: 'assets/images/coding_challenge.png',
            title: '366 DAYS CODING CHALLENGE',
            date: '2023 - Present',
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildProject({
    required VoidCallback onTap,
    required String image,
    required String title,
    required String date,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Bounceable(
          onTap: onTap,
          child: Image.asset(image),
        ),
        SizedBox(height: 20),
        Text(
          title,
          style: GoogleFonts.anton(fontSize: 24),
        ),
        SizedBox(height: 10),
        Text(date, style: GoogleFonts.anton()),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _ButtonCard(title: 'Flutter'),
            SizedBox(width: 5),
            _ButtonCard(title: 'MongoDB'),
            SizedBox(width: 5),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _ButtonCard(title: 'Figma'),
            SizedBox(width: 5),
            _ButtonCard(title: 'Firebase'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _ButtonCard(title: 'NodeJs'),
            SizedBox(width: 5),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class _ButtonCard extends StatelessWidget {
  final String title;
  const _ButtonCard({Key? key, required this.title}) : super(key: key);

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
