import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Profile/Details.dart';
import 'package:flutter_application_1/Desktop/Profile/newProfile.dart';
import 'package:flutter_application_1/Mobile/Profile/mprofile.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: double.infinity, // Allow the container to take full height
      child: Column(
        children: [
          Expanded(
            child: MainProfile1Widget(),
          ),
        ],
      ),
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
                    //page1
                    MobileprofileWidget(companyModel),
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
                    MobileprofileWidget(companyModel),
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
