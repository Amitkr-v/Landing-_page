import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Bodym extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.8,
            decoration: BoxDecoration(),
            child: Text(
              '',
              style: TextStyle(
                color: Color(0xFFff5700),
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Discover and ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 38,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: 'connect ',
                    style: GoogleFonts.poppins(
                        color: Color(0xFF5824ff), // Highlight color
                        fontSize: 38,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: 'with startups',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 38,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
              child: Text(
                'Connecting You to Bihars Brightest Startups\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2E2D2C),
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
