import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Page3sections/ImageText.dart';

class Section1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(90, 40, 90, 40),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: '\nExplore, ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: 'Connect, ',
                  style: TextStyle(
                    fontSize: 40,
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
                    fontSize: 35,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -2.41),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 110, 0, 0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 280,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFCEF),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(90, 0, 90, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 1,
                        child: ImageTextWidget(
                            "Explore & Discover",
                            "Connect with Bihar's brightest startups based on various criteria and search options.",
                            'assets/images/Appl.png'),
                      ),
                      Flexible(
                        flex: 1,
                        child: ImageTextWidget(
                            "Connect with Startup",
                            "Initiate connections with startups to explore opportunities and collaborations.",
                            'assets/images/dash.png'),
                      ),
                      Flexible(
                        flex: 1,
                        child: ImageTextWidget(
                            "Engage Service",
                            "Actively participate and utilize startup services to support Bihar's entrepreneurial growth.",
                            'assets/images/algo.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //SizedBox(height: 80,),
        ]);
  }
}
