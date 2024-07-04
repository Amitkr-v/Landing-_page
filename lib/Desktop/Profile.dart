import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Profile/newProfile.dart';
import 'package:flutter_application_1/Mobile/Profile/profile.dart';
import 'package:flutter_application_1/Model/company.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Profile extends StatelessWidget {
  final CompanyModel companyModel;
  Profile(this.companyModel);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: SafeArea(
            top: true,
            child: ScreenTypeLayout.builder(
              mobile: (BuildContext context) => Mobilelayout(companyModel),
              desktop: (BuildContext context) => DesktopLayout(companyModel),
              tablet: (BuildContext context) => TabletLayout(companyModel),
            )),
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  final CompanyModel companyModel;
  DesktopLayout(this.companyModel);
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: screenWidth,
      child: Stack(children: [
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    MainProfile1Widget(companyModel),
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

class TabletLayout extends StatelessWidget {
  final CompanyModel companyModel;
  TabletLayout(this.companyModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF8F8F8),
      child: Stack(children: [
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    mobileProfile(companyModel),
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
  final CompanyModel companyModel;
  Mobilelayout(this.companyModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF8F8F8),
      child: Stack(children: [
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    mobileProfile(companyModel),
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
