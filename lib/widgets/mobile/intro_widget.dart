import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class IntroWidgetMobile extends StatelessWidget {
  const IntroWidgetMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/container.png',
              scale: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'Hello I am Romario, from Timor-Leste. Currently, continuing my study in Indonesia, majoring in Computer Science in Telkom University, Bandung Indonesia. I am someone who is passionate about technology and social life. Thats why i am learning coding, because i love to learn new things everyday.'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () => downloadFile('assets/files/cv.pdf'),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/dw_icon.png"),
              SizedBox(width: 5),
              Text(
                'Download resume',
                style: GoogleFonts.anton(color: Colors.black),
              ),
            ],
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            side: MaterialStateProperty.all(BorderSide(color: Colors.white)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSocialMediaIcon(
              'assets/icons/fb.png',
              'https://www.facebook.com/profile.php?id=61557288911580&mibextid=kFxxJD',
            ),
            SizedBox(width: 10),
            _buildSocialMediaIcon(
              'assets/icons/github.png',
              'https://github.com/Mr-Roma',
            ),
            SizedBox(width: 10),
            _buildSocialMediaIcon(
              'assets/icons/linkedin.png',
              'https://www.linkedin.com/in/romario-marcal-60a481258/',
            ),
            SizedBox(width: 10),
            _buildSocialMediaIcon(
              'assets/icons/youtube.png',
              'https://www.youtube.com/@romariogajog',
            ),
          ],
        ),
      ],
    );
  }

  downloadFile(url) {
    AnchorElement anchorElement = new AnchorElement(href: url);
    anchorElement.download = 'Romario Resume';
    anchorElement.click();
  }

  getApplicationDocumentsDirectory() {}
}

bool isHovering = false;
Widget _buildSocialMediaIcon(String assetPath, String url) {
  return StatefulBuilder(
    builder: (BuildContext context, void Function(void Function()) setState) {
      return MouseRegion(
        onHover: (event) => setState(() => isHovering = true),
        onExit: (event) => setState(() => isHovering = false),
        child: InkWell(
          onTap: () =>
              launchUrl(Uri.parse(url)), // Pass the url string to Uri.parse
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: isHovering ? 40 : 30,
            height: isHovering ? 40 : 30,
            child: Image.asset(assetPath),
          ),
        ),
      );
    },
  );
}
