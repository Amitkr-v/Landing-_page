import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Mobile/Page3sections/ImageText1.dart';

class Section1m extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(35, 10, 10, 25),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: -100, end: 0),
                  duration: Duration(seconds: 1),
                  builder: (context, value, child) {
                    return Transform.translate(
                      offset: Offset(value, 0),
                      child: Opacity(
                        opacity: (100 + value) / 100,
                        child: child,
                      ),
                    );
                  },
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
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, -2.41),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 110, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFCEF),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImageTextWidget1(
                        "Explore & Discover",
                        "Connect with Bihar's brightest startups based on various criteria and search options.",
                        'assets/images/Explore.png',
                      ),
                      ImageTextWidget1(
                        "Connect with Startup",
                        "Initiate connections with startups to explore opportunities and collaborations.",
                        'assets/images/startup.png',
                      ),
                      ImageTextWidget1(
                        "Engage Service",
                        "Actively participate and utilize startup services to support Bihar's entrepreneurial growth.",
                        'assets/images/Engage.png',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
