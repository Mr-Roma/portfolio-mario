import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:unique_portfolio/controller/music_controller.dart';
import 'package:provider/provider.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  static final ValueNotifier<bool> logoPressedNotifier =
      ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        width: 150,
        child: InkWell(
          onTap: () {},
          child: Bounceable(
            onTap: () {
              NavBarLogo.logoPressedNotifier.value = true;
              Provider.of<MusicProvider>(context, listen: false)
                  .playNextTrack();
            },
            child: Padding(
              padding: EdgeInsets.only(left: 50),
              child: Image.asset("assets/images/appbar_logo.png"),
            ),
          ), // Replace with your actual logo widget
        ));
  }
}
