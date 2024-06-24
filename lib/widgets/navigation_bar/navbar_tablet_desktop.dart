import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:unique_portfolio/constant/app_colors.dart';
import 'package:unique_portfolio/widgets/navigation_bar/navbar_item.dart';
import 'package:unique_portfolio/widgets/navigation_bar/navbar_logo.dart';

class NavBarTabletDesktop extends StatelessWidget {
  final ScrollController scrollController;
  final GlobalKey experienceKey;
  final GlobalKey skillKey;
  final GlobalKey portfolioKey;

  const NavBarTabletDesktop({
    Key? key,
    required this.scrollController,
    required this.experienceKey,
    required this.skillKey,
    required this.portfolioKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                NavBarItem(
                  title: 'Profile',
                  onTap: () {
                    scrollToSection(0);
                  },
                ),
                SizedBox(width: 20),
                NavBarItem(
                  title: 'Working Experience',
                  onTap: () {
                    scrollToSection(1);
                  },
                ),
                SizedBox(width: 20),
                NavBarItem(
                  title: 'Skill Set',
                  onTap: () {
                    scrollToSection(2);
                  },
                ),
                SizedBox(width: 20),
                NavBarItem(
                  title: 'Portfolio',
                  onTap: () {
                    scrollToSection(3);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void scrollToSection(int index) {
    switch (index) {
      case 0:
        scrollController.animateTo(0,
            duration: Duration(seconds: 1), curve: Curves.easeInOut);
        break;
      case 1:
        scrollController.animateTo(
          findOffsetByKey(experienceKey),
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
        break;
      case 2:
        scrollController.animateTo(
          findOffsetByKey(skillKey),
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
        break;
      case 3:
        scrollController.animateTo(
          findOffsetByKey(portfolioKey),
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
        break;
    }
  }

  double findOffsetByKey(GlobalKey key) {
    final RenderBox? renderBox =
        key.currentContext?.findRenderObject() as RenderBox?;
    final RenderAbstractViewport? viewport =
        RenderAbstractViewport.of(renderBox);
    if (viewport != null && renderBox != null) {
      return viewport.getOffsetToReveal(renderBox, 0.0).offset;
    } else {
      return 0;
    }
  }
}
