import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Profile/newProfile.dart';
import 'package:flutter_application_1/Mobile/Profile/profile.dart';
import 'package:flutter_application_1/Model/Showcase.dart';
import 'package:flutter_application_1/Model/company.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Profile extends StatelessWidget {
  final CompanyModel companyModel;
  final ShowcaseModel showcaseModel;
  Profile(this.companyModel,this.showcaseModel);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: SafeArea(
            top: true,
            child: ScreenTypeLayout.builder(
              mobile: (BuildContext context) => Mobilelayout(companyModel,showcaseModel),
              desktop: (BuildContext context) => DesktopLayout(companyModel,showcaseModel),
              tablet: (BuildContext context) => TabletLayout(companyModel,showcaseModel),
            )),
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  final CompanyModel companyModel;
  final ShowcaseModel showcaseModel;
  DesktopLayout(this.companyModel,this.showcaseModel);
  @override
  Widget build(BuildContext context) {
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
                    MainProfile1Widget(companyModel,showcaseModel),
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
  final ShowcaseModel showcaseModel;
  TabletLayout(this.companyModel,this.showcaseModel);
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
                    mobileProfile(companyModel,showcaseModel),
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
  final ShowcaseModel showcaseModel;
  Mobilelayout(this.companyModel,this.showcaseModel);
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
                    mobileProfile(companyModel,showcaseModel),
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
