import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2Widget extends StatefulWidget {
  const Page2Widget({super.key});

  @override
  State<Page2Widget> createState() => _Page2WidgetState();
}

class _Page2WidgetState extends State<Page2Widget> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF704FE6),
      child: Stack(children: <Widget>[
        Positioned(
          left: -80,
          bottom: 0,
          child: Opacity(
            opacity: 0.2,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: ClipRect(
                  child: Image.asset(
                    'assets/images/ltbt.png',
                  ),
                )),
          ),
        ),
        Positioned(
          right: -80,
          top: 0,
          child: Opacity(
            opacity: 0.6,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: ClipRect(
                  child: Image.asset(
                    'assets/images/rtup.png',
                  ),
                )),
          ),
        ),
        Positioned(
          top: 0,
          left: 80,
          child: Container(
            height: 180,
            child: Image.asset(
              'assets/images/bulb.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 110,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Our aim is to empower ',
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 40,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Bihar\'s Startups ',
                          style: TextStyle(
                            fontFamily: 'AmsterdamOne',
                            fontStyle: FontStyle.italic,
                            fontSize: 40,
                            color: Color.fromARGB(255, 255, 225, 0),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text:
                              'with a seamless platform for innovation and engagement.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontStyle: FontStyle.italic,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 300, // Provide a fixed height for the PageView
                    child: PageView(
                      controller: _pageController,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        buildCompanyPage([
                          companyItem("NS Apps Innovations", 'assets/images/nsapps.png', "Software Company"),
                          companyItem("Medishala", 'assets/images/logo.png', "Software Company"),
                          companyItem("College club", 'assets/images/logo.png', "Software Company"),
                          companyItem("Floww", 'assets/images/logo.png', "Software Company"),
                          companyItem("Kridha tutor", 'assets/images/logo.png', "Software Company"),
                        ]),
                        buildCompanyPage([
                          companyItem("NS Apps Innovations", 'assets/images/nsapps.png', "Software Company"),
                          companyItem("Medishala", 'assets/images/logo.png', "Software Company"),
                          companyItem("College club", 'assets/images/logo.png', "Software Company"),
                          companyItem("Floww", 'assets/images/logo.png', "Software Company"),
                          companyItem("Kridha tutor", 'assets/images/logo.png', "Software Company"),
                        ]),
                        buildCompanyPage([
                          companyItem("NS Apps Innovations", 'assets/images/nsapps.png', "Software Company"),
                          companyItem("Medishala", 'assets/images/logo.png', "Software Company"),
                          companyItem("College club", 'assets/images/logo.png', "Software Company"),
                          companyItem("Floww", 'assets/images/logo.png', "Software Company"),
                          companyItem("Kridha tutor", 'assets/images/logo.png', "Software Company"),
                        ]),
                        buildCompanyPage([
                          companyItem("NS Apps Innovations", 'assets/images/nsapps.png', "Software Company"),
                          companyItem("Medishala", 'assets/images/logo.png', "Software Company"),
                          companyItem("College club", 'assets/images/logo.png', "Software Company"),
                          companyItem("Floww", 'assets/images/logo.png', "Software Company"),
                          companyItem("Kridha tutor", 'assets/images/logo.png', "Software Company"),
                        ]),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 10,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () {
                        if (_pageController.page! > 0) {
                          _pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    ),
                  ),
                  Positioned(
                    right: 10,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                      onPressed: () {
                        if (_pageController.page! < 4) { // Update the maximum page index accordingly
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 160,
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget buildCompanyPage(List<Widget> items) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items,
    );
  }

  Column companyItem(String name, String image, String about) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 40),
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xFFFFD8D8),
                width: 4,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 180,
                height: 180,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Text(
          name,
          style: GoogleFonts.poppins(
            color: Color(0xFFF8F8F8),
            fontSize: 20,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          about,
          style: GoogleFonts.poppins(
            color: Color.fromARGB(255, 225, 225, 225),
            fontSize: 16,
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
