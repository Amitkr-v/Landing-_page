import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Profile.dart';
import 'package:flutter_application_1/Model/company.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2m extends StatefulWidget {
  const Page2m({Key? key}) : super(key: key);

  @override
  State<Page2m> createState() => _Page2mWidgetState();
}

class _Page2mWidgetState extends State<Page2m> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  int _totalPages = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF704FE6),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            bottom: 0,
            child: Opacity(
              opacity: 0.2,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.11,
                child: ClipRect(
                  child: Image.asset(
                    'assets/images/ltbt.png',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Opacity(
              opacity: 0.6,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ClipRect(
                  child: Image.asset(
                    'assets/images/rtup.png',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 5,
            child: Container(
              width: 60,
              height: 90,
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
                  height: 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Our aim is to empower  ',
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 25,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Bihar\'s Startups  ',
                            style: TextStyle(
                              fontFamily: 'AmsterdamOne',
                              fontStyle: FontStyle.italic,
                              fontSize: 25,
                              color: Color.fromARGB(255, 255, 225, 0),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                'with a seamless platform for innovation and engagement.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
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
                        children: [
                          buildCompanyPage([
                            companyItem(
                                name: "NS Apps Innovations",
                                image: 'assets/images/nsapps.png',
                                about: "Software Company"),
                            companyItem(
                                name: "Medishala",
                                image: 'assets/images/logo.png',
                                about: "Software Company"),
                            //companyItem("College club",
                            //  'assets/images/logo.png', "Software Company"),
                          ]),
                          buildCompanyPage([
                            companyItem(
                                name: "Floww",
                                image: 'assets/images/logo.png',
                                about: "Software Company"),
                            companyItem(
                                name: "Kridha tutor",
                                image: 'assets/images/logo.png',
                                about: "Software Company"),
                            //companyItem("NS Apps Innovations",
                            //  'assets/images/nsapps.png', "Software Company"),
                          ]),
                          buildCompanyPage([
                            companyItem(
                                name: "Medishala",
                                image: 'assets/images/logo.png',
                                about: "Software Company"),
                            companyItem(
                                name: "College club",
                                image: 'assets/images/logo.png',
                                about: "Software Company"),
                            // companyItem("Floww", 'assets/images/logo.png',
                            //  "Software Company"),
                          ]),
                          buildCompanyPage([
                            companyItem(
                                name: "NS Apps Innovations",
                                image: 'assets/images/nsapps.png',
                                about: "Software Company"),
                            companyItem(
                                name: "Medishala",
                                image: 'assets/images/logo.png',
                                about: "Software Company"),
                            //companyItem("Kridha tutor",
                            //  'assets/images/logo.png', "Software Company"),
                          ]),
                        ],
                      ),
                    ),
                    /*Positioned(
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
                    ),*/
                    /*Positioned(
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
                    ),*/
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
        ],
      ),
    );
  }

  Widget buildCompanyPage(List<Widget> items) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items,
    );
  }
}

class companyItem extends StatefulWidget {
  final String name;
  final String image;
  final String about;

  companyItem({required this.name, required this.image, required this.about});

  @override
  _CompanyItemState createState() => _CompanyItemState();
}

class _CompanyItemState extends State<companyItem> {
  bool _isHovered = false;

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
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
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 10, end: 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 40),
              child: MouseRegion(
                onEnter: (_) => _onHover(true),
                onExit: (_) => _onHover(false),
                child: AnimatedContainer(
                  duration: Duration(milliseconds:50),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _isHovered
                        ? Color.fromARGB(100, 195, 180, 252)
                        : Color.fromARGB(0, 255, 255, 255),
                    boxShadow: _isHovered
                        ? [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 10),
                            ),
                          ]
                        : [],
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
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
                        width: 95,
                        height: 95,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          widget.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              widget.name,
              style: GoogleFonts.poppins(
                color: Color(0xFFF8F8F8),
                fontSize: 16,
                letterSpacing: 0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              widget.about,
              style: GoogleFonts.poppins(
                color: Color.fromARGB(255, 225, 225, 225),
                fontSize: 14,
                letterSpacing: 0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
