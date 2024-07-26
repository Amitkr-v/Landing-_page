import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Page4/dialog.dart';
import 'package:flutter_application_1/Homepage/home.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Page4m extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 1,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 3,
                decoration: BoxDecoration(
                  color: Color(0xFFEFF0F1),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.9,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
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
                                  fontSize: 20,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
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
                    width: MediaQuery.sizeOf(context).width * 1,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
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
                ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.2,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeMain()),
                            ),
                            child: text1('HOME'),
                          )),
                      MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                              onTap: () => showDialog(
                                    context: context,
                                    builder: (BuildContext context) => dialog1(
                                        'Stories',
                                        'The Stories section on our website showcases inspiring success stories and innovative projects from various startups we\'ve connected. Discover how these collaborations have led to groundbreaking solutions and transformed industries, illustrating the power of networking and partnership in the startup ecosystem.'),
                                  ),
                              child: text1('STORIES'))),
                      MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                              onTap: () => showDialog(
                                    context: context,
                                    builder: (BuildContext context) => dialog1(
                                        'Tools',
                                        'The Tools on our website offers a range of cutting-edge resources designed to empower startups. Explore our suite of tools that streamline operations, enhance productivity, and drive innovation, enabling startups to achieve their full potential'),
                                  ),
                              child: text1('TOOLS'))),
                      MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                              onTap: () => showDialog(
                                    context: context,
                                    builder: (BuildContext context) => dialog1(
                                        'Teams',
                                        'The Teams section on our website highlights the diverse and talented groups driving innovation in various startups. Discover the dynamic collaborations and skilled professionals whose expertise and dedication are transforming ideas into successful ventures.'),
                                  ),
                              child: text1('TEAMS'))),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                              onTap: () => showDialog(
                                    context: context,
                                    builder: (BuildContext context) => dialog1(
                                        'Company info',
                                        'Discover Bihar\'s brightest startup coworking space located in Patna\'s Mauryalok Complex. Our vibrant community provides the perfect environment for innovation, collaboration, and growth for emerging entrepreneurs'),
                                  ),
                              child: text1('COMPANY INFO'))),
                      MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                              onTap: () => showDialog(
                                    context: context,
                                    builder: (BuildContext context) => dialog1(
                                        'Newsroom',
                                        'Explore our Newsroom for the latest updates and insights into the dynamic startup ecosystem, featuring impactful stories and industry trends. Stay informed about our initiatives and achievements as we continue to drive innovation in Bihar and beyond.'),
                                  ),
                              child: text1('NEWSROOM'))),
                      MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                              onTap: () => showDialog(
                                    context: context,
                                    builder: (BuildContext context) => dialog1(
                                        'careers',
                                        'Discover opportunities to join Bihar\'s brightest startup coworking space located in Patna\'s Mauryalok complex. Explore diverse roles that empower you to contribute to our mission of fostering innovation and supporting emerging startups'),
                                  ),
                              child: text1('CAREERS'))),
                      MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () => showDialog(
                              context: context,
                              builder: (BuildContext context) => dialog1(
                                  'Brand resources',
                                  'Explore our brand resources and discover how we maintain our identity as Bihar\'s brightest startup coworking space in Patna\'s Mauryalok complex. Access logos, guidelines, and assets that embody our commitment to fostering innovation and supporting emerging startups'),
                            ),
                            child: text1('BRAND RESOURCES'),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.facebook,
                    color: Colors.black,
                    size: 24,
                  ),
                  onPressed: () async {
                    const url =
                        'https://www.facebook.com/people/B-HUB/100089167454769/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
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
                    )),
                Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
                            borderRadius: BorderRadius.circular(0),
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
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
                            borderRadius: BorderRadius.circular(0),
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
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 3,
              decoration: BoxDecoration(
                color: Color(0xFFEFF0F1),
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.2,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                          onTap: () => showDialog(
                                context: context,
                                builder: (BuildContext context) => dialog1(
                                    'Terms',
                                    'Our Terms ensure your data security through encryption and caching for improved user experience. We prioritize safeguarding your information while enhancing site performance. Our Privacy Policy outlines these measures to protect your data integrity and confidentiality.'),
                              ),
                          child: text1('Terms'))),
                  MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                          onTap: () => showDialog(
                                context: context,
                                builder: (BuildContext context) => dialog1(
                                    'Privacy',
                                    'Our Terms ensure your data security through encryption and caching for improved user experience. We prioritize safeguarding your information while enhancing site performance. Our Privacy Policy outlines these measures to protect your data integrity and confidentiality.'),
                              ),
                          child: text1('Privacy'))),
                  MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                          onTap: () => showDialog(
                                context: context,
                                builder: (BuildContext context) => dialog1(
                                    'Cookies',
                                    'Our Terms ensure your data security through encryption and caching for improved user experience. We prioritize safeguarding your information while enhancing site performance. Our Privacy Policy outlines these measures to protect your data integrity and confidentiality.'),
                              ),
                          child: text1('Cookies'))),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => dialog1('Sitemap',
                            'Our Sitemap provides a structured overview of our website\'s content, facilitating easy navigation and access to all sections. It ensures a streamlined browsing experience, helping you find information quickly and efficiently'),
                      ),
                      child: text1('Sitemap'),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.copyright_sharp,
                        color: Color(0xFF57636c),
                        size: 24,
                      ),
                      Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: text1('2024')),
                      text1('NS apps innovation')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text text1(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xFF67788A),
        fontSize: 16,
        letterSpacing: 0,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
