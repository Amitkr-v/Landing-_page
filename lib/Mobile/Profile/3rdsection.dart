import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Desktop/Profile/3rdsecdialog.dart';
import 'package:flutter_application_1/Model/Services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class mobileSection3p extends StatelessWidget {
  final ServiceModel serviceModel;
  mobileSection3p(this.serviceModel);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
            child: Text(
              'Services',
              style: Styleb(),
            ),
          ),
          
                        _serviceData(
              context,
              serviceModel.image,
              serviceModel.title,
              serviceModel.titleDesc,
            ),
        ],
      ),
    );
  }

  MouseRegion _serviceData(
      BuildContext context, String image, String title, String titleDesc) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
           showDialog(
            context: context,
            builder: (BuildContext context) => DialogSec3(),
          );
        },
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFF9F9F9),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 20, top: 10),
                        child: Text(title, style: TextService1()),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 5, 5, 5),
                        child: Text(titleDesc, style: Brown()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextStyle TextService1() {
    return TextStyle(
      fontFamily: 'Readex Pro',
      color: Colors.black,
      letterSpacing: 0,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      decoration: TextDecoration.none,
    );
  }

  TextStyle TextService() {
    return TextStyle(
      fontFamily: 'Readex Pro',
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
      fontSize: 18,
      decoration: TextDecoration.none,
      color: Colors.black,
    );
  }

  TextStyle TextMember() {
    return TextStyle(
      fontFamily: 'Readex Pro',
      letterSpacing: 0,
      fontWeight: FontWeight.w700,
      fontSize: 12,
      decoration: TextDecoration.none,
      color: Colors.black,
    );
  }

  TextStyle Styleb() {
    return GoogleFonts.poppins(
      fontSize: 20,
      letterSpacing: 0,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.none,
      color: Colors.black,
    );
  }

  TextStyle Textstyleabout() {
    return GoogleFonts.poppins(
      fontSize: 12,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none,
      color: Colors.black,
    );
  }

  TextStyle Textstylel() {
    return GoogleFonts.poppins(
      fontSize: 18,
      letterSpacing: 0,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.none,
      color: Colors.black,
    );
  }

  TextStyle Textstyle() {
    return GoogleFonts.poppins(
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      decoration: TextDecoration.none,
      color: Colors.black,
    );
  }

  TextStyle Brown() {
    return GoogleFonts.poppins(
        color: Color.fromARGB(230, 90, 89, 89),
        letterSpacing: 0,
        fontSize: 12,
        decoration: TextDecoration.none,
        fontWeight: FontWeight.w400);
  }
}


