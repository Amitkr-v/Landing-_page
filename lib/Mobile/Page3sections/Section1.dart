import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Mobile/Page3sections/ImageText1.dart';

class Section1m extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 25),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: '\nExplore, ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: 'Connect, ',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'AmsterdamOne',
                        letterSpacing: 2,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF704FE6),
                      ),
                    ),
                    TextSpan(
                      text: 'Engage: Unveiling the Journey!\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10,0,0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageTextWidget1(
                  "Explore & Discover",
                  "Connect with Bihar's brightest startups based on various criteria and search options.",
                  'assets/images/Exp.png',
                ),
                ImageTextWidget1(
                  "Connect with Startup",
                  "Initiate connections with startups to explore opportunities and collaborations.",
                  'assets/images/star.png',
                ),
                ImageTextWidget1(
                  "Engage Service",
                  "Actively participate and utilize startup services to support Bihar's entrepreneurial growth.",
                  'assets/images/eng.png',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
