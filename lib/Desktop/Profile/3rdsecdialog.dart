import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogSec3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController messageController = TextEditingController();
    bool isDownloadHovered = true;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Stack(
          children: [
            Positioned(
              top: -80,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Image.asset('assets/images/el.png'),
              ),
            ),
            Positioned(
              top: 50,
              right: -30,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Image.asset('assets/images/el1.png'),
              ),
            ),
            // 50% of screen height
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Avail Service',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xFFA08E8E),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20, 8, 20, 20),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Color(0xFF7E7E7E),
                            letterSpacing: 0,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xFFA08E8E),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        controller: messageController,
                        decoration: InputDecoration(
                          hintText: 'Your message...',
                          hintStyle: TextStyle(
                            color: Color(0xFF7E7E7E),
                            letterSpacing: 0,
                          ),
                          border: InputBorder.none,
                        ),
                        maxLines: 4,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Fluttertoast.showToast(
                        msg:
                            "You will be notified on your mail! Thank you for contacting us.",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 120,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Submit',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
