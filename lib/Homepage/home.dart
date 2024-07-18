import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Page1Sections/bodySection.dart';
import 'package:flutter_application_1/Desktop/Page1Sections/navbar.dart';
import 'package:flutter_application_1/Desktop/Page1Sections/stest.dart';
import 'package:flutter_application_1/Desktop/Page2.dart';
import 'package:flutter_application_1/Desktop/Page3sections/Section1.dart';
import 'package:flutter_application_1/Desktop/Page4/Page4.dart';
import 'package:flutter_application_1/Mobile/Page1section/Section1.dart';
import 'package:flutter_application_1/Mobile/Page1section/Section2.dart';
import 'package:flutter_application_1/Mobile/Page2.dart';
import 'package:flutter_application_1/Mobile/Page3sections/Section1.dart';
import 'package:flutter_application_1/Mobile/Page4.dart';
import 'package:flutter_application_1/Mobile/navm.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: SafeArea(
          top: true,
          child: ScreenTypeLayout.builder(
            mobile: (BuildContext context) => MobileLayout(),
            desktop: (BuildContext context) => DesktopLayout(),
            tablet: (BuildContext context) => TabletLayout(),
          ),
        ),
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      width: screenWidth,
      child: Stack(
        children: [
          Column(
            children: [
              Navbar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        child: BodySection(),
                      ),
                      Page2Widget(),
                      Section1(),
                      Container(
                        color: Color.fromARGB(255, 250, 250, 250),
                        child: BottomPage(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 10,
            right: 40,
            child: search1(),
          ),
        ],
      ),
    );
  }
}

class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Navm(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Bodym(),
                  Bodym1(),
                  Page2m(),
                  Section1m(),
                  Page4m(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Navm(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Bodym(),
                  Bodym1(),
                  Page2m(),
                  Section1m(),
                  Page4m(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
