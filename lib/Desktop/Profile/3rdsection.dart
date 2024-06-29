import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

class section3p extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.white,
        //child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 10),
                child: Text(
                  'Services',
                  style: Styleb(),
                ),
              ),
              servicedata(
                  context,
                  'assets/images/appdevelop.png',
                  'App development',
                  'Our website development company specializes in creating custom, user-friendly websites tailored to your business needs, ensuring a seamless online presence.'),
              servicedata(
                  context,
                  'assets/images/webdev.png',
                  'Web development',
                  'Our website development company specializes in creating custom, user-friendly websites tailored to your business needs, ensuring a seamless online presence.')
            ],
          ),
        ),
      //),
    );
  }

  GestureDetector servicedata(
      BuildContext context, String image, String title, String about) {
    return GestureDetector(
      onTap: () {
        _showContactDialog(context);
      },
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
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
                      padding:
                          const EdgeInsetsDirectional.only(start: 20, top: 10),
                      child: Text(title, style: TextService1()),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 5, 5, 5),
                      child: Text(about, style: Brown()),
                    ),
                  ],
                ),
              ],
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

void _showContactDialog(BuildContext context) {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
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
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20, 10, 20, 20),
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
                            const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
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
    },
  );
}
