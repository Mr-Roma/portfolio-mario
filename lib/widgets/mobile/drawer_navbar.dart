import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:unique_portfolio/controller/music_controller.dart';
import 'package:unique_portfolio/widgets/navigation_bar/navbar_logo.dart';

class DrawerNavbar extends StatefulWidget {
  const DrawerNavbar({super.key});

  @override
  State<DrawerNavbar> createState() => _DrawerNavbarState();
}

class _DrawerNavbarState extends State<DrawerNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 50, left: 10, bottom: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Bounceable(
                  onTap: () {
                    NavBarLogo.logoPressedNotifier.value = true;
                    Provider.of<MusicProvider>(context, listen: false)
                        .playNextTrack();
                  },
                  child: Image.asset('assets/images/appbar_logo.png'),
                ),
                Text(
                  'MENU',
                  style: GoogleFonts.anton(),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            MenuRow(
              onTapInkwell: () {},
              onTap: () {},
              text: 'Profile',
              image: 'assets/icons/file.png',
            ),
            SizedBox(
              height: 10,
            ),
            MenuRow(
              onTapInkwell: () {},
              onTap: () {},
              text: 'Working Experience',
              image: 'assets/icons/file.png',
            ),
            SizedBox(
              height: 10,
            ),
            MenuRow(
              onTapInkwell: () {},
              onTap: () {},
              text: 'Skill Set',
              image: 'assets/icons/file.png',
            ),
            SizedBox(
              height: 10,
            ),
            MenuRow(
              onTapInkwell: () {},
              onTap: () {},
              text: 'Portfolio',
              image: 'assets/icons/file.png',
            ),
          ],
        ),
      ),
    );
  }
}

class MenuRow extends StatelessWidget {
  final VoidCallback onTapInkwell;
  final VoidCallback onTap;
  final String text;
  final String image;

  const MenuRow(
      {Key? key,
      required this.onTapInkwell,
      required this.onTap,
      required this.text,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapInkwell,
      child: Row(
        children: [
          Bounceable(
            onTap: onTap,
            child: Image.asset(
              image,
              scale: 1.8,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: GoogleFonts.anton(),
          ),
        ],
      ),
    );
  }
}
