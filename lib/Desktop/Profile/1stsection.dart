import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/Model/company.dart';
import 'package:url_launcher/url_launcher.dart';

class section1p extends StatelessWidget {
  final CompanyModel companyModel;
  section1p(this.companyModel);

  void _launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        //If code crashes change here

        //child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(50, 198, 197, 197),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.all(4),
                          child: Container(
                            width: 70,
                            height: 70,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: FullScreenWidget(
                                disposeLevel: DisposeLevel.Low,
                                child: Center(
                                  child: Hero(
                                    tag: "iMage",
                                    child: ClipRRect(
                                      child: Image.asset(
                                        companyModel.profile,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Text(
                              companyModel.name,
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Text(
                              companyModel.address,
                              style: Brown(),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(Icons.facebook,
                                  color: Colors.black, size: 24),
                              onPressed: () =>
                                  _launchURL(companyModel.facebook),
                            ),
                            IconButton(
                              icon: SvgPicture.asset(
                                  'assets/images/instagram.svg',
                                  width: 20,
                                  height: 20),
                              onPressed: () =>
                                  _launchURL(companyModel.instagram),
                            ),
                            IconButton(
                              icon: SvgPicture.asset(
                                  'assets/images/linkedin.svg',
                                  width: 20,
                                  height: 20),
                              onPressed: () =>
                                  _launchURL(companyModel.linkedin),
                            ),
                            IconButton(
                              icon: Icon(Icons.location_on,
                                  color: Colors.black, size: 24),
                              onPressed: () => _launchURL(companyModel.map),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsetsDirectional.all(20),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Container(
                        height: 1,
                        color: Color.fromARGB(100, 150, 149, 149),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.travel_explore,
                            color: Colors.black,
                            size: 24,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () async {
                                  const url = 'https://www.instagram.com/';
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width*0.12,
                                  child: Text(
                                    companyModel.website,
                                    style: Textstyle(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                            size: 24,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.11,
                              child: Text(
                                companyModel.email,
                                style: Textstyle(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.black,
                            size: 24,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Text(
                              companyModel.phone,
                              style: Textstyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.black,
                            size: 24,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Text(
                              companyModel.joined,
                              style: Textstyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.groups,
                            color: Colors.black,
                            size: 24,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Text(
                              companyModel.totalmem,
                              style: Textstyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.black,
                            size: 24,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Text(
                              companyModel.status,
                              style: Textstyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsetsDirectional.all(20),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Container(
                        height: 1,
                        color: Color.fromARGB(100, 150, 149, 149),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Text(
                    'About company',
                    style: Textstylel(),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child: Text(
                        companyModel.about,
                        style: Textstyleabout(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      //),
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
      fontSize: 12,
      decoration: TextDecoration.none,
      color: Colors.black,
    );
  }

  TextStyle Brown() {
    return GoogleFonts.poppins(
        color: Color.fromARGB(190, 150, 149, 149),
        letterSpacing: 0,
        fontSize: 12,
        decoration: TextDecoration.none,
        fontWeight: FontWeight.w400);
  }
}
