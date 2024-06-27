import 'package:flutter/material.dart';
import 'package:flutter_application_1/Mobile/Myteam/button.dart';

class Myteamm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Buttonm(),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.4,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Color(0xFF57636C),
                          width: 0.8,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 8, 8, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 14,
                              height: 14,
                              decoration: BoxDecoration(
                                color: Color(0xFF14181B),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'OUR TEAM',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'NS APPS',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            fontSize: 28,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'INNOVATION LLP',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFFEBAF04),
                            fontSize: 24,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      decoration: BoxDecoration(),
                      child: Text(
                        'Empowering Talent,Together',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontSize: 20,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.7,
            decoration: BoxDecoration(),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HoverProfile(
                    imagePath: 'assets/images/profilep3.png',
                    name: 'Emily',
                    position: 'CEO',
                  ),
                  HoverProfile(
                    imagePath: 'assets/images/profilep2.png',
                    name: 'Jane Smith',
                    position: 'CTO',
                  ),
                  HoverProfile(
                    imagePath: 'assets/images/profilep2.png',
                    name: 'Michael Brown',
                    position: 'CFO',
                  ),
                  HoverProfile(
                    imagePath: 'assets/images/profile1.png',
                    name: 'John',
                    position: 'COO',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class HoverProfile extends StatefulWidget {
  final String imagePath;
  final String name;
  final String position;

  HoverProfile({
    required this.imagePath,
    required this.name,
    required this.position,
  });

  @override
  _HoverProfileState createState() => _HoverProfileState();
}

class _HoverProfileState extends State<HoverProfile> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            _isHovering = true;
          });
        },
        onExit: (_) {
          setState(() {
            _isHovering = false;
          });
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: -100, end: 0),
              duration: Duration(seconds: 1),
              builder: (context, value, child) {
                return Transform.translate(
                  offset: Offset(value, 0),
                  child: Opacity(
                    opacity: (100 + value) / 100,
                    child: child,
                  ),
                );
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.3,
                height: MediaQuery.sizeOf(context).height * 0.6,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFF9DADF),
                      Color(0xFFFFFFFF),
                      Color(0xFFFCD0DA)
                    ],
                    stops: [0.5, 0.6, 1],
                    begin: AlignmentDirectional(0, -1),
                    end: AlignmentDirectional(0, 1),
                  ),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      color: Color(0x33000000),
                      offset: Offset(
                        0,
                        2,
                      ),
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    widget.imagePath,
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            if (_isHovering)
              Container(
                width: MediaQuery.sizeOf(context).width * 0.3,
                height: MediaQuery.sizeOf(context).height * 0.6,
                decoration: BoxDecoration(
                  color: Colors.brown.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        widget.position,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
