import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Profile.dart';
import 'package:flutter_application_1/Model/company.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2Widget extends StatefulWidget {
  const Page2Widget({super.key});

  @override
  State<Page2Widget> createState() => _Page2WidgetState();
}

class _Page2WidgetState extends State<Page2Widget> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  int _totalPages = 4;

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
                        onPageChanged: (index) {
                          setState(() {
                            _currentPage = index;
                          });
                        },
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        buildCompanyPage([
                          companyItem("NS Apps Innovations",
                              'assets/images/nsapps.png', "Software Company"),
                          companyItem("Medishala", 'assets/images/logo.png',
                              "Software Company"),
                          companyItem("College club", 'assets/images/logo.png',
                              "Software Company"),
                          companyItem("Floww", 'assets/images/logo.png',
                              "Software Company"),
                          companyItem("Kridha tutor", 'assets/images/logo.png',
                              "Software Company"),
                        ]),
                        buildCompanyPage([
                          companyItem("NS Apps Innovations",
                              'assets/images/nsapps.png', "Software Company"),
                          companyItem("Medishala", 'assets/images/logo.png',
                              "Software Company"),
                          companyItem("College club", 'assets/images/logo.png',
                              "Software Company"),
                          companyItem("Floww", 'assets/images/logo.png',
                              "Software Company"),
                          companyItem("Kridha tutor", 'assets/images/logo.png',
                              "Software Company"),
                        ]),
                        buildCompanyPage([
                          companyItem("NS Apps Innovations",
                              'assets/images/nsapps.png', "Software Company"),
                          companyItem("Medishala", 'assets/images/logo.png',
                              "Software Company"),
                          companyItem("College club", 'assets/images/logo.png',
                              "Software Company"),
                          companyItem("Floww", 'assets/images/logo.png',
                              "Software Company"),
                          companyItem("Kridha tutor", 'assets/images/logo.png',
                              "Software Company"),
                        ]),
                        buildCompanyPage([
                          companyItem("NS Apps Innovations",
                              'assets/images/nsapps.png', "Software Company"),
                          companyItem("Medishala", 'assets/images/logo.png',
                              "Software Company"),
                          companyItem("College club", 'assets/images/logo.png',
                              "Software Company"),
                          companyItem("Floww", 'assets/images/logo.png',
                              "Software Company"),
                          companyItem("Kridha tutor", 'assets/images/logo.png',
                              "Software Company"),
                        ]),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 10,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                        onPressed: () {
                          if (_currentPage > 0) {
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
                          if (_currentPage < _totalPages - 1) {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                      ),
                    ),
                  Positioned(
                      bottom: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          _totalPages,
                          (index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentPage == index
                                  ? Colors.white
                                  : Colors.white54,
                            ),
                          ),
                        ),
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

  GestureDetector companyItem(String name, String image, String about) {
    CompanyModel companyMod = CompanyModel(
      id: 'NS apps innovations',
      profile: 'assets/images/nsapps.png',
      name: 'NS APPS INNOVATION LLP',
      address: 'A-block 5th floor Mauryalok complex Patna',
      facebook: 'https://www.facebook.com/nsgamesstudio/',
      instagram: 'https://www.instagram.com/peepalbaba/',
      linkedin:
          'https://www.linkedin.com/company/ns-apps-innovations/?originalSubdomain=in',
      map:
          'https://www.google.com/maps/place/B-HUB/@25.6102306,85.1351869,19.92z/data=!4m6!3m5!1s0x39ed59346f4e3b4d:0xdaa21a164b9e944f!8m2!3d25.6094616!4d85.1350599!16s%2Fg%2F11kb9s657c?entry=ttu',
      website: 'https://nsappsstudio.com',
      email: 'enquiry@nsapps.in',
      phone: '+919128712345',
      joined: '26 March,2015',
      totalmem: '10+ member',
      status: 'Active',
      about:
          'NS APPS INNOVATION LLP is an innovative initiative by the Bihar government aimed at fostering the growth of startups in the region. Located in the heart of Bihar, B-Hub provides budding entrepreneurs with state-of-the-art infrastructure, mentorship, and access to a network of investors and industry experts.',
    );

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (((context) => Profile(companyMod)))),
      ),
      child: Column(
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
      ),
    );
  }
}
