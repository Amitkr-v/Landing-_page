import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Page1Sections/dialog.dart';
import 'package:lottie/lottie.dart';

class Navm extends StatefulWidget {
  const Navm({Key? key}) : super(key: key);

  @override
  _NavmState createState() => _NavmState();
}

class _NavmState extends State<Navm> {
  bool isDownloadHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Startup Space',
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (_) {
                  setState(() {
                    isDownloadHovered = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isDownloadHovered = false;
                  });
                },
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => dialog(),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isDownloadHovered
                          ? Color.fromARGB(255, 252, 110, 39)
                          : Color(0xFFff5700),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          color: Color.fromARGB(51, 237, 236, 236),
                          offset: Offset(0, 2),
                          spreadRadius: 2,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.all(12),
                      child: Row(
                        children: [
                          Text(
                            'Download app',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              letterSpacing: 0,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 10),
                child: Icon(
                  Icons.dehaze,
                  color: Color(0xFF57636C),
                  size: 24,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
