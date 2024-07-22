import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Profile/1stsection.dart';
import 'package:flutter_application_1/Desktop/Profile/2ndsection.dart';
import 'package:flutter_application_1/Desktop/Profile/2ndsection1.dart';
import 'package:flutter_application_1/Desktop/Profile/3rdsection.dart';
import 'package:flutter_application_1/Model/Showcase.dart';
import 'package:flutter_application_1/Model/company.dart';

class MainProfile1Widget extends StatelessWidget {
  ShowcaseModel showcaseModel;
  CompanyModel companyModel;
  MainProfile1Widget(this.companyModel,this.showcaseModel);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                section1p(companyModel),
                
                Section2P(showcaseModel: showcaseModel),
                section3p(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

