import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Desktop/Page1Sections/stest.dart';
import 'package:google_fonts/google_fonts.dart';

class Bodym1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [search1()],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                    child: Text(
                      '\nUp to',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1b1d51),
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                TweenAnimationBuilder<int>(
                  tween: IntTween(begin: 0, end: 150),
                  duration: Duration(seconds: 2),
                  builder: (context, value, child) {
                    return Text(
                      '$value',
                      style: GoogleFonts.archivoBlack(
                        textStyle: TextStyle(
                          fontSize: 40,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w100,
                          decoration: TextDecoration.none,
                          color: Color(0xFF1b1d51),
                        ),
                      ),
                    );
                  },
                ),
                Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Text(
                      'Startups',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1b1d51),
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(150, 0, 0, 0),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                      child: Text(
                        '\nUp to',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1b1d51),
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                  TweenAnimationBuilder<int>(
                    tween: IntTween(begin: 0, end: 20),
                    duration: Duration(seconds: 2),
                    builder: (context, value, child) {
                      return Text(
                        '$value',
                        style: GoogleFonts.archivoBlack(
                          textStyle: TextStyle(
                            fontSize: 40,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w100,
                            decoration: TextDecoration.none,
                            color: Color(0xFF1b1d51),
                          ),
                        ),
                      );
                    },
                  ),
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Text(
                        'Services\n\n',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1b1d51),
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.sizeOf(context).width * 0.7,
          child: ClipRRect(
            borderRadius: BorderRadius.zero,
            child: Image.asset(
              'assets/images/asset1.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
