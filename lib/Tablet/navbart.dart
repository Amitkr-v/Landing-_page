import 'package:flutter/material.dart';

class navbart extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  Padding(
            padding: EdgeInsetsDirectional.fromSTEB(50, 20, 50, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: 'TM',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 25,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w900,
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                              text: '.',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 25,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w900,
                                color: Colors.red,
                              ),
                            )
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(60, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Resource',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xFF57636C),
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(60, 0, 0, 0),
                      child: Text(
                        'News',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xFF3978F2),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        color: Color(0x33000000),
                        offset: Offset(
                          0,
                          2,
                        ),
                        spreadRadius: 2,
                      )
                    ],
                    borderRadius: BorderRadius.circular(50),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 15),
                    child: Text(
                      'Download app',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFFFFFFFF),
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
          

  }
}