import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Page1Sections/bodySection.dart';
import 'package:flutter_application_1/Desktop/Page1Sections/navbar.dart';
import 'package:flutter_application_1/Desktop/Page1Sections/stest.dart';
import 'package:flutter_application_1/Desktop/Page2.dart';
import 'package:flutter_application_1/Desktop/Page3sections/Section1.dart';
import 'package:flutter_application_1/Desktop/Page4.dart';
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
              mobile: (BuildContext context) => Mobilelayout(),
              desktop: (BuildContext context) => DesktopLayout(),
              tablet: (BuildContext context) => TabletLayout(),
            )),
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFFFFFF),
            Color(0xFFFFFFFF),
            Color(0xFFFFFFFF),
            Color(0xFFFFFFFF),
          ],
          stops: [0, 0.1, 0.23, 0.615],
          begin: AlignmentDirectional(-1, -0.98),
          end: AlignmentDirectional(1, 0.98),
        ),
      ),
      child: Stack(children: [
        Column(
          children: [
            Navbar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //Page1
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: BodySection(),
                    ),

                    //page2
                    Page2Widget(),

                    //page3
                    Section1(),

                    // Page3
                    //Container(
                    //height: screenHeight,
                    //child: Center(
                    //child: MyTeam(),
                    //),
                    //),
                    // Page 4
                    Container(
                      color: Color.fromARGB(255, 255, 255, 255),
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
          child: Row(children: [
            search1(),
          ]),
        ),
      ]),
    );
  }
}

class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF),
      child: Stack(children: [
        Column(
          children: [
            Navm(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    //page1
                    Bodym(),
                    Bodym1(),
                    //page2
                    Page2m(),
                    //Page3
                    Section1m(),

                    //page4
                    Page4m(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

class Mobilelayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF),
      child: Stack(children: [
        Column(
          children: [
            Navm(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    //page1
                    Bodym(),
                    Bodym1(),
                    //page2
                    Page2m(),
                    //Page3
                    Section1m(),

                    //page4
                    Page4m(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
