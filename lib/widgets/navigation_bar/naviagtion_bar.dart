import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unique_portfolio/widgets/navigation_bar/navbar_tablet_desktop.dart';

class NavBar extends StatelessWidget {
  final Function(int) onMenuPressed;
  final int selectedPage;
  final ScrollController scrollController;
  final GlobalKey experienceKey;
  final GlobalKey skillKey;
  final GlobalKey portfolioKey;

  const NavBar({
    Key? key,
    required this.onMenuPressed,
    required this.selectedPage,
    required this.scrollController,
    required this.experienceKey,
    required this.skillKey,
    required this.portfolioKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      tablet: NavBarTabletDesktop(
        scrollController: scrollController,
        experienceKey: experienceKey,
        skillKey: skillKey,
        portfolioKey: portfolioKey,
      ),
      mobile: Container(),
    );
  }
}
