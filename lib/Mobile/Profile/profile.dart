import 'package:flutter/material.dart';
import 'package:flutter_application_1/Mobile/Profile/1stsection.dart';
import 'package:flutter_application_1/Mobile/Profile/2ndsection.dart';
import 'package:flutter_application_1/Mobile/Profile/3rdsection.dart';
import 'package:flutter_application_1/Model/company.dart';

class mobileProfile extends StatelessWidget {
  final CompanyModel companyModel;
  mobileProfile(this.companyModel);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        mobileSection1p(companyModel),
        mobileSection2p(),
        mobileSection3p(),
      ],
    );
  }
}
