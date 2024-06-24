import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unique_portfolio/api/user_sheets_api.dart';
import 'package:unique_portfolio/constant/app_colors.dart';
import 'package:unique_portfolio/views/menu_content_mobile.dart';
import 'package:unique_portfolio/widgets/mobile/contact_mobile.dart';
import 'package:unique_portfolio/widgets/mobile/experience_widget_mobile.dart';
import 'package:unique_portfolio/widgets/mobile/intro_widget.dart';
import 'package:unique_portfolio/widgets/mobile/portfolio_widget_mobile.dart';
import 'package:unique_portfolio/widgets/mobile/skill_widaget_mobile.dart';
import 'package:unique_portfolio/widgets/navigation_bar/navbar_logo.dart';

class HomeContentMobile extends StatefulWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  State<HomeContentMobile> createState() => _HomeContentMobileState();
}

//updates
class _HomeContentMobileState extends State<HomeContentMobile> {
  final introKey = GlobalKey();
  final experienceKey = GlobalKey();
  final skillKey = GlobalKey();
  final portfolioKey = GlobalKey();

  bool isMenuOpen = false;

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CustomAppBar(
              isMenuOpen: isMenuOpen,
              onMenuTap: toggleMenu,
            ),
            if (isMenuOpen) MenuMobileContent(),
            SizedBox(height: 10),
            if (!isMenuOpen) ...[
              Column(
                key: introKey,
                children: [
                  Row(
                    children: [
                      Text(
                        'INTRODUCE',
                        style: GoogleFonts.anton(fontSize: 40),
                      ),
                      SizedBox(width: 10),
                      Image.asset("assets/icons/image.png"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: ShakeAnimation(),
                              ),
                            ),
                            IntroWidgetMobile(),
                            SizedBox(height: 40),
                            Image.asset('assets/icons/separator.png'),
                            SizedBox(height: 20),
                            ExperienceWidgetMobile(
                              key: experienceKey,
                            ),
                            SizedBox(height: 40),
                            SkillWidgetMobile(
                              key: skillKey,
                            ),
                            SizedBox(height: 40),
                            Image.asset('assets/icons/separator.png'),
                            PortfolioWidgetMobile(
                              key: portfolioKey,
                            ),
                            ContactMobile(
                              onSavedUser: (user) async {
                                await UserSheetsApi.insert([user.toJson()]);
                              },
                            ),
                            SizedBox(height: 40),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ],
        ),
      ],
    );
  }
}

class ShakeAnimation extends StatefulWidget {
  @override
  _ShakeAnimationState createState() => _ShakeAnimationState();
}

class _ShakeAnimationState extends State<ShakeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: -0.05, end: 0.05).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: _animation.value,
          child: Image.asset('assets/images/profile_mobile.png'),
        );
      },
    );
  }
}

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool isMenuOpen;
  final Function() onMenuTap;

  const CustomAppBar({
    required this.isMenuOpen,
    required this.onMenuTap,
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(55);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.0, 0.1),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: PreferredSize(
        preferredSize: widget.preferredSize,
        child: Container(
          height: widget.preferredSize.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: primaryColor, // Replace with your preferred color
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.7),
                spreadRadius: 2,
                blurRadius: 8,
                offset: Offset(0, 3),
              )
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: widget.onMenuTap,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: widget.isMenuOpen
                      ? Image.asset(
                          'assets/icons/x.png',
                          scale: 2,
                        )
                      : Image.asset('assets/icons/menu_mobile.png'),
                ),
              ),
              NavBarLogo(),
            ],
          ),
        ),
      ),
    );
  }
}
