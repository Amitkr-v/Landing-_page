library full_screen_image;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Mobile/Profile/deldialogue.dart';
import 'package:flutter_application_1/Model/Showcase.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:google_fonts/google_fonts.dart';

class Section2P extends StatelessWidget {
  final ShowcaseModel showcaseModel;

  Section2P({required this.showcaseModel});

  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF9F9F9),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Company Team',
                        style: Styleb(),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 30),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
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
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 40, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Showcase',
                            style: Styleb(),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Feed(
                        context,
                        showcaseModel.name,
                        showcaseModel.description,
                        showcaseModel.profileImage,
                        showcaseModel.images,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Padding Feed(BuildContext context, String showcasename, String showcaseabout,
    String showcaseprofile, List<String> showcaseImages) {
  return Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 20),
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
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: FullScreenWidget(
                              disposeLevel: DisposeLevel.Low,
                              child: Center(
                                child: Hero(
                                  tag: "unique",
                                  child: ClipRRect(
                                    child: Image.asset(
                                      showcaseprofile,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
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
                              style: TextMember(),
                            ),
                            Text(
                              showcaseabout,
                              style: Brown(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => Dialogue(),
                      );
                    },
                    child: Icon(
                      Icons.keyboard_control,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: _buildImageLayout(context, showcaseImages),
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

Widget _buildImageLayout(BuildContext context, List<String> images) {
  Widget _buildImageContainer(
      String imagePath, double widthFactor, double heightFactor) {
    return Padding(
      padding: EdgeInsets.all(5), // Adding padding around each image
      child: Container(
        width: MediaQuery.sizeOf(context).width * widthFactor,
        height: MediaQuery.sizeOf(context).height * heightFactor,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: FullScreenWidget(
            disposeLevel: DisposeLevel.Low,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }

  switch (images.length) {
    case 1:
      return Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildImageContainer(
              images[0], 0.4, 0.3), // Larger container for one image
        ],
      );
    case 2:
      return Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildImageContainer(
              images[0], 0.2, 0.3), // Slightly larger containers for two images
          _buildImageContainer(images[1], 0.2, 0.3),
        ],
      );
    case 3:
      return Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildImageContainer(
                  images[0], 0.13, 0.3), // Adjusted size for three images
              _buildImageContainer(images[1], 0.13, 0.3),
              _buildImageContainer(images[2], 0.13, 0.3),
            ],
          ),
        ],
      );
    case 4:
      return Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildImageContainer(images[1], 0.2, 0.15),
                  _buildImageContainer(images[2], 0.2, 0.15),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildImageContainer(images[3], 0.2, 0.15),
                  _buildImageContainer(images[4], 0.2, 0.15),
                ],
              ),
            ],
          ),
        ],
      );
    default:
      return Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildImageContainer(
                  images[0], 0.18, 0.31), // For more than 4 images
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildImageContainer(images[1], 0.11, 0.15),
                  _buildImageContainer(images[2], 0.11, 0.15),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildImageContainer(images[3], 0.11, 0.15),
                  _buildImageContainer(images[4], 0.11, 0.15),
                ],
              ),
            ],
          )
        ],
      );
  }
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
            style: TextMember(),
          ),
        ),
      ],
    ),
  );
}

TextStyle TextMember() {
  return GoogleFonts.poppins(
    letterSpacing: 0,
    fontWeight: FontWeight.w600,
    fontSize: 12,
    decoration: TextDecoration.none,
    color: Colors.black,
  );
}

TextStyle Styleb() {
  return GoogleFonts.poppins(
    fontSize: 18,
    letterSpacing: 0,
    fontWeight: FontWeight.w600,
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

Widget _buildImageContainer(BuildContext context, String imagePath,
    double widthFactor, double heightFactor) {
  return Padding(
    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
    child: Container(
      width: MediaQuery.sizeOf(context).width * widthFactor,
      height: MediaQuery.sizeOf(context).height * heightFactor,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: FullScreenWidget(
          disposeLevel: DisposeLevel.Low,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ),
  );
}
