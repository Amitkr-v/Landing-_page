import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:google_fonts/google_fonts.dart';

class mobileSection2p extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Company Team',
                    style: styleb(),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xFF969595),
                                  ),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                child: Text(
                                  'Add Member',
                                  style: textMember(),
                                ),
                              ),
                            ],
                          ),
                          Member(),
                          Member(),
                          Member(),
                          Member(),
                          Member(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Show case',
                        style: styleb(),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                  Feed(
                      context,
                      'Ankit',
                      'Manager',
                      'assets/images/profile1.png',
                      'assets/images/pic1.jpg',
                      'assets/images/pic2.png',
                      'assets/images/pic3.png',
                      'assets/images/pic3.png',
                      'assets/images/pic1.jpg'),
                  Feed1(
                      context,
                      'Ankush',
                      'Manager',
                      'assets/images/profilep2.png',
                      'assets/images/pic1.jpg',
                      'assets/images/pic1.png'),
                  Feed3(
                      context,
                      'Muskan',
                      'Manager',
                      'assets/images/profilep3.png',
                      'assets/images/pic1.jpg',
                      'assets/images/pic3.png',
                      'assets/images/pic2.png'),
                  Feed4(
                      context,
                      'Ankit',
                      'Manager',
                      'assets/images/profilep2.png',
                      'assets/images/pic1.jpg',
                      'assets/images/pic2.png',
                      'assets/images/pic3.png',
                      'assets/images/pic1.png'),
                  Feed5(context, 'Ankit', 'Manager',
                      'assets/images/profilep2.png', 'assets/images/pic1.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding Feed(
      BuildContext context,
      String showcasename,
      String showcaseabout,
      String showcaseprofile,
      String Showcase1image,
      String Showcase1image2,
      String Showcase1image3,
      String Showcase1image4,
      String Showcase1image5) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                              width: 120,
                              height: 120,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: FullScreenWidget(
                                disposeLevel: DisposeLevel.Low,
                                child: Hero(
                                  tag: "Profile_$showcasename",
                                  child: ClipRRect(
                                    child: Image.asset(
                                      showcaseprofile,
                                      
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            
                            children: [
                              Text(
                                showcasename,
                                style: textMember(),
                              ),
                              Text(
                                showcaseabout,
                                style: brown(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.keyboard_control,
                    color: Colors.black,
                    size: 24,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: MediaQuery.sizeOf(context).width * 0.36,
                        height: MediaQuery.sizeOf(context).height * 0.25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: FullScreenWidget(
                          disposeLevel: DisposeLevel.Low,
                          child: Hero(
                            tag: "Image_1_$showcasename",
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                Showcase1image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.20,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.12,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: FullScreenWidget(
                                    disposeLevel: DisposeLevel.Low,
                                    child: Hero(
                                      tag: "Image_2_$showcasename",
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          Showcase1image2,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.20,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.12,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: FullScreenWidget(
                                    disposeLevel: DisposeLevel.Low,
                                    child: Hero(
                                      tag: "Image_3_$showcasename",
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          Showcase1image3,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.20,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.12,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: FullScreenWidget(
                                      disposeLevel: DisposeLevel.Low,
                                      child: Hero(
                                        tag: "Image_4_$showcasename",
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            Showcase1image4,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    )),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.20,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.12,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: FullScreenWidget(
                                      disposeLevel: DisposeLevel.Low,
                                      child: Hero(
                                        tag: "Image_5_$showcasename",
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            Showcase1image5,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.visibility,
                      color: Color(0xFF969595),
                      size: 24,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'views',
                        style: GoogleFonts.poppins(
                          letterSpacing: 0,
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding Feed1(BuildContext context, String showcasename, String showcaseabout,
      String showcaseprofile, String showcase1image, String Showcase1image2) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            width: 120,
                            height: 120,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: FullScreenWidget(
                          disposeLevel: DisposeLevel.Low,
                          child: Hero(
                            tag: "Profile2_$showcasename",
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                showcaseprofile,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                showcasename,
                                style: textMember(),
                              ),
                              Text(
                                showcaseabout,
                                style: brown(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.keyboard_control,
                    color: Colors.black,
                    size: 24,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: MediaQuery.sizeOf(context).width * 0.38,
                        height: MediaQuery.sizeOf(context).height * 0.24,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: FullScreenWidget(
                          disposeLevel: DisposeLevel.Low,
                          child: Hero(
                            tag: "Image2_1_$showcasename",
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                showcase1image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 5),
                      child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.38,
                          height: MediaQuery.sizeOf(context).height * 0.24,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: FullScreenWidget(
                            disposeLevel: DisposeLevel.Low,
                            child: Hero(
                              tag: "Image2_2_$showcasename",
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  Showcase1image2,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.visibility,
                      color: Color(0xFF969595),
                      size: 24,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'views',
                        style: GoogleFonts.poppins(
                          letterSpacing: 0,
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding Feed3(
      BuildContext context,
      String showcasename,
      String showcaseabout,
      String showcaseprofile,
      String showcase1image,
      String showcase1image2,
      String Showcase1image3) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                              width: 120,
                              height: 120,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: FullScreenWidget(
                                disposeLevel: DisposeLevel.Low,
                                child: Hero(
                                  tag: "Profile3_$showcasename",
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      showcaseprofile,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                showcasename,
                                style: textMember(),
                              ),
                              Text(
                                showcaseabout,
                                style: brown(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.keyboard_control,
                    color: Colors.black,
                    size: 24,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: MediaQuery.sizeOf(context).width * 0.38,
                        height: MediaQuery.sizeOf(context).height * 0.25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: FullScreenWidget(
                          disposeLevel: DisposeLevel.Low,
                          child: Hero(
                            tag: "Image3_1_$showcasename",
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                showcase1image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                          child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.36,
                              height: MediaQuery.sizeOf(context).height * 0.12,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: FullScreenWidget(
                                disposeLevel: DisposeLevel.Low,
                                child: Hero(
                                  tag: "Image3_2_$showcasename",
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      showcase1image2,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.36,
                              height: MediaQuery.sizeOf(context).height * 0.12,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: FullScreenWidget(
                                disposeLevel: DisposeLevel.Low,
                                child: Hero(
                                  tag: "Image3_3_$showcasename",
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      Showcase1image3,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.visibility,
                      color: Color(0xFF969595),
                      size: 24,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'views',
                        style: GoogleFonts.poppins(
                          letterSpacing: 0,
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding Feed4(
      BuildContext context,
      String showcasename,
      String showcaseabout,
      String showcaseprofile,
      String showcase1image,
      String showcase1image2,
      String showcase1image3,
      String Showcase1image4) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                              width: 120,
                              height: 120,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: FullScreenWidget(
                                disposeLevel: DisposeLevel.Low,
                                child: Hero(
                                  tag: "Profile4_$showcasename",
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      showcaseprofile,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                showcasename,
                                style: textMember(),
                              ),
                              Text(
                                showcaseabout,
                                style: brown(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.keyboard_control,
                    color: Colors.black,
                    size: 24,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: MediaQuery.sizeOf(context).width * 0.28,
                        height: MediaQuery.sizeOf(context).height * 0.24,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: FullScreenWidget(
                          disposeLevel: DisposeLevel.Low,
                          child: Hero(
                            tag: "Image4_1_$showcasename",
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                showcase1image2,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 5),
                      child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.28,
                          height: MediaQuery.sizeOf(context).height * 0.24,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: FullScreenWidget(
                            disposeLevel: DisposeLevel.Low,
                            child: Hero(
                              tag: "Image4_2_$showcasename",
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  showcase1image2,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.20,
                              height: MediaQuery.sizeOf(context).height * 0.11,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: FullScreenWidget(
                                disposeLevel: DisposeLevel.Low,
                                child: Hero(
                                  tag: "Image4_3_$showcasename",
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      showcase1image3,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                          child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.20,
                              height: MediaQuery.sizeOf(context).height * 0.12,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: FullScreenWidget(
                                disposeLevel: DisposeLevel.Low,
                                child: Hero(
                                  tag: "Image4_4_$showcasename",
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      Showcase1image4,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.visibility,
                      color: Color(0xFF969595),
                      size: 24,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'views',
                        style: GoogleFonts.poppins(
                          letterSpacing: 0,
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding Feed5(BuildContext context, String showcasename, String showcaseabout,
      String showcaseprofile, String showcase1image) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                              width: 120,
                              height: 120,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: FullScreenWidget(
                                disposeLevel: DisposeLevel.Low,
                                child: Hero(
                                  tag: "Profile5_$showcasename",
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      showcaseprofile,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                showcasename,
                                style: textMember(),
                              ),
                              Text(
                                showcaseabout,
                                style: brown(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.keyboard_control,
                    color: Colors.black,
                    size: 24,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                        width: MediaQuery.sizeOf(context).width * 0.78,
                        height: MediaQuery.sizeOf(context).height * 0.24,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: FullScreenWidget(
                          disposeLevel: DisposeLevel.Low,
                          child: Hero(
                            tag: "Image5_1_$showcasename",
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                showcase1image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.visibility,
                      color: Color(0xFF969595),
                      size: 24,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'views',
                        style: GoogleFonts.poppins(
                          letterSpacing: 0,
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding Member() {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF4B39EF),
                  Color(0xFF39D2C0),
                ],
                stops: [0, 1],
                begin: AlignmentDirectional(0, -1),
                end: AlignmentDirectional(0, 1),
              ),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.all(1),
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xFF969595),
                  ),
                ),
                child: Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/profilep3.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
            child: Text(
              'Emily',
              style: textMember(),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle textMember() {
    return GoogleFonts.poppins(
      letterSpacing: 0,
      fontWeight: FontWeight.w600,
      fontSize: 12,
      decoration: TextDecoration.none,
      color: Colors.black,
    );
  }

  TextStyle styleb() {
    return GoogleFonts.poppins(
      fontSize: 18,
      letterSpacing: 0,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.none,
      color: Colors.black,
    );
  }

  TextStyle brown() {
    return GoogleFonts.poppins(
      color: Color.fromARGB(190, 150, 149, 149),
      letterSpacing: 0,
      fontSize: 12,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w400,
    );
  }
}

class FullScreenImage extends StatelessWidget {
  final String imagePath;

  FullScreenImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
