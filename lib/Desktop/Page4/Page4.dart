import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Page4/dialog.dart';
import 'package:flutter_application_1/Homepage/home.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 1.5,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFF0F1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(40, 0, 5, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Startup Space',
                                    style: TextStyle(
                                      fontSize: 25,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w900,
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
                          ],
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Text(
                              'Startup Space is a dynamic hub fostering innovation and entrepreneurship, providing resources and support for emerging startups to thrive.',
                              style: TextStyle(
                                color: Color(0xFF67788A),
                                fontSize: 16,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () async {
                                    const url =
                                        'https://www.facebook.com/people/B-HUB/100089167454769/';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.facebook,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                    onPressed:
                                        () {}, // GestureDetector handles the tap action
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
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
                                      decoration: BoxDecoration(),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(0),
                                        child: SvgPicture.asset(
                                          'assets/images/instagram.svg',
                                          width: 20,
                                          height: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () async {
                                        const url =
                                            'https://www.linkedin.com/in/followbhub/?originalSubdomain=in';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          child: SvgPicture.asset(
                                            'assets/images/linkedin.svg',
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () async {
                                        const url =
                                            'https://x.com/i/flow/login?redirect_after_login=%2FFollowBhub';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          child: SvgPicture.asset(
                                            'assets/images/tw.svg',
                                            width: 20,
                                            height: 20,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () async {
                                      const url = 'https://dribbble.com/';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(0),
                                        child: SvgPicture.asset(
                                          'assets/images/dribbble.svg',
                                          width: 24,
                                          height: 24,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
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
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 10),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (((context) => HomeMain()))),
                                ),
                                child: Text(
                                  'HOME',
                                  style: TextStyle(
                                    color: Color(0xFF67788A),
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 10),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () => showDialog(
                                  context: context,
                                  builder: (BuildContext context) => dialog1(
                                      'Stories',
                                      'The Stories section on our website showcases inspiring success stories and innovative projects from various startups we\'ve connected. Discover how these collaborations have led to groundbreaking solutions and transformed industries, illustrating the power of networking and partnership in the startup ecosystem.'),
                                ),
                                child: Text(
                                  'STORIES',
                                  style: TextStyle(
                                    color: Color(0xFF67788A),
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 10),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () => showDialog(
                                  context: context,
                                  builder: (BuildContext context) => dialog1(
                                      'Tools',
                                      'The Tools on our website offers a range of cutting-edge resources designed to empower startups. Explore our suite of tools that streamline operations, enhance productivity, and drive innovation, enabling startups to achieve their full potential'),
                                ),
                                child: Text(
                                  'TOOLS',
                                  style: TextStyle(
                                    color: Color(0xFF67788A),
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () => showDialog(
                                context: context,
                                builder: (BuildContext context) => dialog1(
                                    'Teams',
                                    'The Teams section on our website highlights the diverse and talented groups driving innovation in various startups. Discover the dynamic collaborations and skilled professionals whose expertise and dedication are transforming ideas into successful ventures.'),
                              ),
                              child: Text(
                                'TEAMS',
                                style: TextStyle(
                                  color: Color(0xFF67788A),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(50, 0, 20, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 10),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () => showDialog(
                                      context: context,
                                      builder: (BuildContext context) => dialog1(
                                          'Company info',
                                          'Discover Bihar\'s brightest startup coworking space located in Patna\'s Mauryalok Complex. Our vibrant community provides the perfect environment for innovation, collaboration, and growth for emerging entrepreneurs'),
                                    ),
                                    child: Text(
                                      'COMPANY INFO',
                                      style: TextStyle(
                                        color: Color(0xFF67788A),
                                        fontSize: 14,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 10),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () => showDialog(
                                      context: context,
                                      builder: (BuildContext context) => dialog1(
                                          'Newsroom',
                                          'Explore our Newsroom for the latest updates and insights into the dynamic startup ecosystem, featuring impactful stories and industry trends. Stay informed about our initiatives and achievements as we continue to drive innovation in Bihar and beyond.'),
                                    ),
                                    child: Text(
                                      'NEWSROOM',
                                      style: TextStyle(
                                        color: Color(0xFF67788A),
                                        fontSize: 14,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 10),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () => showDialog(
                                      context: context,
                                      builder: (BuildContext context) => dialog1(
                                          'careers',
                                          'Discover opportunities to join Bihar\'s brightest startup coworking space located in Patna\'s Mauryalok complex. Explore diverse roles that empower you to contribute to our mission of fostering innovation and supporting emerging startups'),
                                    ),
                                    child: Text(
                                      'CAREERS',
                                      style: TextStyle(
                                        color: Color(0xFF67788A),
                                        fontSize: 14,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () => showDialog(
                                    context: context,
                                    builder: (BuildContext context) => dialog1(
                                        'Brand resources',
                                        'Explore our brand resources and discover how we maintain our identity as Bihar\'s brightest startup coworking space in Patna\'s Mauryalok complex. Access logos, guidelines, and assets that embody our commitment to fostering innovation and supporting emerging startups'),
                                  ),
                                  child: Text(
                                    'BRAND RESOURCES',
                                    style: TextStyle(
                                      color: Color(0xFF67788A),
                                      fontSize: 14,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 1.5,
                    decoration: BoxDecoration(
                      color: Color(0xFFEFF0F1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.copyright_sharp,
                      color: Color(0xFF57636c),
                      size: 24,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: Text(
                        '2024',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 0,
                          color: Color(0xFF67788A),
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    Text(
                      'NS apps innovation',
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 0,
                        color: Color(0xFF67788A),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => showDialog(
                          context: context,
                          builder: (BuildContext context) => dialog1('Terms',
                              'Our Terms ensure your data security through encryption and caching for improved user experience. We prioritize safeguarding your information while enhancing site performance. Our Privacy Policy outlines these measures to protect your data integrity and confidentiality.'),
                        ),
                        child: Text(
                          'Terms',
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 0,
                            color: Color(0xFF67788A),
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => showDialog(
                            context: context,
                            builder: (BuildContext context) => dialog1(
                                'Privacy',
                                'Our Terms ensure your data security through encryption and caching for improved user experience. We prioritize safeguarding your information while enhancing site performance. Our Privacy Policy outlines these measures to protect your data integrity and confidentiality.'),
                          ),
                          child: Text(
                            'Privacy',
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 0,
                              color: Color(0xFF67788A),
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => showDialog(
                            context: context,
                            builder: (BuildContext context) => dialog1(
                                'Cookies',
                                'Our Terms ensure your data security through encryption and caching for improved user experience. We prioritize safeguarding your information while enhancing site performance. Our Privacy Policy outlines these measures to protect your data integrity and confidentiality.'),
                          ),
                          child: Text(
                            'Cookies',
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 0,
                              color: Color(0xFF67788A),
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => showDialog(
                            context: context,
                            builder: (BuildContext context) => dialog1(
                                'Sitemap',
                                'Our Sitemap provides a structured overview of our website\'s content, facilitating easy navigation and access to all sections. It ensures a streamlined browsing experience, helping you find information quickly and efficiently'),
                          ),
                          child: Text(
                            'Sitemap',
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 0,
                              color: Color(0xFF67788A),
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
