import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Profile.dart';
import 'package:flutter_application_1/Model/company.dart';

class search1 extends StatefulWidget {
  @override
  _Search1State createState() => _Search1State();
}

class _Search1State extends State<search1> {
  TextEditingController _search1Controller = TextEditingController();
  final List<String> jobs = [
    'NS APPS INNOVATION LLP',
    'Data Scientist',
    'Product Manager',
    'Designer',
    'DevOps Engineer',
    'Sales Manager',
    'Marketing Specialist',
    'B-hub Space',
  ];
  List<String> _filteredJobs = [];
  bool showSearchContainer = false;
  bool showSearchIcon = false;
  int? _hoveredIndex;

  @override
  void initState() {
    super.initState();
    _search1Controller.addListener(() {
      setState(() {
        _filteredJobs = jobs
            .where((job) => job
                .toLowerCase()
                .contains(_search1Controller.text.toLowerCase()))
            .toList();
      });
    });

    // Trigger animations initially
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        showSearchContainer = true;
        showSearchIcon = true;
      });
    });
  }

  @override
  void dispose() {
    _search1Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(4, 20, 0, 6),
          child: Column(
            children: [
              TweenAnimationBuilder<double>(
                tween:
                    Tween<double>(begin: 0, end: showSearchContainer ? 1 : 0),
                duration: Duration(seconds: 1),
                builder: (context, value, child) {
                  return Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(-100 * (1 - value), 0),
                      child: child,
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color.fromARGB(255, 222, 222, 222),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 10, 10, 10),
                        child: TweenAnimationBuilder<double>(
                          tween: Tween<double>(
                              begin: 0, end: showSearchIcon ? 1 : 0),
                          duration: Duration(seconds: 1),
                          builder: (context, value, child) {
                            return Opacity(
                              opacity: value,
                              child: Transform.translate(
                                offset: Offset(100 * (1 - value), 0),
                                child: child,
                              ),
                            );
                          },
                          child: Container(
                            width: 24,
                            height: 24,
                            //decoration: BoxDecoration(
                            //color: Color(0xFF3978F2),
                            // shape: BoxShape.circle,
                            //),
                            child: Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 170, 170, 170),
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            child: TextField(
                              controller: _search1Controller,
                              decoration: InputDecoration(
                                hintText: 'Search companies..',
                                hintStyle: TextStyle(
                                  color: Color(0xFF7E7E7E),
                                  letterSpacing: 0,
                                ),
                                border: InputBorder.none,
                              ),
                              onTap: () {
                                setState(() {
                                  _filteredJobs = jobs;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (_search1Controller.text.isNotEmpty)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4, 10, 0, 6),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          color: Color(0x33525252),
                          spreadRadius: 2,
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _filteredJobs.length,
                      itemBuilder: (context, index) {
                        return MouseRegion(
                          onEnter: (_) {
                            setState(() {
                              _hoveredIndex = index;
                            });
                          },
                          onExit: (_) {
                            setState(() {
                              _hoveredIndex = null;
                            });
                          },
                          child: Container(
                            color: _hoveredIndex == index
                                ? Colors.grey[200]
                                : Colors.transparent,
                            child: ListTile(
                              title: Text(_filteredJobs[index]),
                              onTap: () {
                                String k = _filteredJobs[index];

                                CompanyModel companyMod = CompanyModel(
                                  id: k,
                                  profile: 'assets/images/nsapps.png',
                                  name: 'NS APPS INNOVATION LLP',
                                  address:
                                      'A-block 5th floor Mauryalok complex Patna',
                                  facebook:
                                      'https://www.facebook.com/nsgamesstudio/',
                                  instagram:
                                      'https://www.instagram.com/peepalbaba/',
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

                                // Update the search box with the selected job name
                                _search1Controller.text = _filteredJobs[index];
                                // Pass job title or other necessary data

                                // Delay the navigation to allow the text to update
                                Future.delayed(Duration(milliseconds: 300), () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Profile(companyMod),
                                    ),
                                  );
                                });
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
