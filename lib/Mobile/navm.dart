import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Navm extends StatelessWidget {
  const Navm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDownloadHovered = false;

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
                    color: Colors.black
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
                onEnter: (_) {
                  // Update state when mouse enters
                  isDownloadHovered = true;
                },
                onExit: (_) {
                  // Update state when mouse exits
                  isDownloadHovered = false;
                },
                child: GestureDetector(
                  onTap: () {
                    _showDownloadDialog(context);
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

  void _showDownloadDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.5,
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Lottie.asset(
                    'assets/images/dialog1.json', // Adjust path as necessary
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Thank you for choosing us!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
