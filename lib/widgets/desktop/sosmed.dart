import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class SosMed extends StatelessWidget {
  const SosMed({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () => downloadFile('assets/files/cv.pdf'),
            child: Row(
              children: [
                Image.asset("assets/icons/dw_icon.png"),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Download resume',
                  style: GoogleFonts.anton(color: Colors.black),
                ),
              ],
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              side: MaterialStateProperty.all(BorderSide(color: Colors.white)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialMediaIcon(
                'assets/icons/fb.png',
                'https://www.facebook.com',
              ),
              SizedBox(width: 10),
              _buildSocialMediaIcon(
                'assets/icons/github.png',
                'https://www.github.com',
              ),
              SizedBox(width: 10),
              _buildSocialMediaIcon(
                'assets/icons/linkedin.png',
                'https://www.linkedin.com',
              ),
              SizedBox(width: 10),
              _buildSocialMediaIcon(
                'assets/icons/youtube.png',
                'https://www.youtube.com',
              ),
            ],
          ),
        ],
      ),
    );
  }

  downloadFile(url) {
    AnchorElement anchorElement = new AnchorElement(href: url);
    anchorElement.download = 'Romario Resume';
    anchorElement.click();
  }
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
