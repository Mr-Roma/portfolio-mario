import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unique_portfolio/views/home/home_content_desktop.dart';
import 'package:unique_portfolio/views/home/home_content_mobile.dart';
import 'package:unique_portfolio/views/menu_content_mobile.dart';
import 'package:unique_portfolio/widgets/centered_view/centered_view.dart';
import 'package:unique_portfolio/widgets/navigation_bar/naviagtion_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedPage = 0;
  final ScrollController scrollController = ScrollController();
  final homeContentDesktop = HomeContentDesktop();

  void changePage(int page) {
    setState(() {
      selectedPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              NavBar(
                onMenuPressed: changePage,
                selectedPage: selectedPage,
                scrollController: scrollController,
                experienceKey: homeContentDesktop.experienceKey,
                skillKey: homeContentDesktop.skillKey,
                portfolioKey: homeContentDesktop.portfolioKey,
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: CenteredView(
                    child: ScreenTypeLayout(
                      mobile: selectedPage == 0
                          ? HomeContentMobile()
                          : MenuMobileContent(),
                      desktop: homeContentDesktop,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
