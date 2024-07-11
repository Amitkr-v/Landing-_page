import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Profile.dart';
import 'package:flutter_application_1/Model/company.dart';

class search1 extends StatefulWidget {
  @override
  _search1State createState() => _search1State();
}

class _search1State extends State<search1> {
  final TextEditingController _search1Controller = TextEditingController();
  final List<String> jobs = [
    'NS APPS INNOVATION LLP',
    'College club',
    'FLOWWW',
    'DesignerCO',
    'DevOL CORPORATION',
    'DRONOKER',
    'KRIDHA',
    'FINACE',
  ];
  List<String> _filteredJobs = [];
  bool showListView = false;
  int? _hoveredIndex;

  @override
  void initState() {
    super.initState();
    _search1Controller.addListener(_filterJobs);
  }

  void _filterJobs() {
    setState(() {
      _filteredJobs = jobs
          .where((job) =>
              job.toLowerCase().contains(_search1Controller.text.toLowerCase()))
          .toList();
      showListView = _filteredJobs.isNotEmpty;
    });
  }

  @override
  void dispose() {
    _search1Controller.dispose();
    super.dispose();
  }

  void _navigateToProfile(String job) {
    final companyMod = CompanyModel(
      id: job,
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

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Profile(companyMod),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        setState(() {
          showListView = false;
        });
      },
      child: Stack(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(4, 20, 0, 6),
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(255, 222, 222, 222),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 10, 10, 10),
                            child: Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 170, 170, 170),
                              size: 22,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                controller: _search1Controller,
                                decoration: const InputDecoration(
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
                                    showListView = true;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (_search1Controller.text.isNotEmpty && showListView)
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(4, 10, 0, 6),
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
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
                                cursor: SystemMouseCursors.click,
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
                                child: GestureDetector(
                                  onTap: () {
                                    _navigateToProfile(_filteredJobs[index]);
                                    setState(() {
                                      showListView = false;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: _hoveredIndex == index
                                        ? Colors.grey[200]
                                        : Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    
                                    child: ListTile(
                                      title: Text(_filteredJobs[index]),
                                    ),
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
          ),
        ],
      ),
    );
  }
}
