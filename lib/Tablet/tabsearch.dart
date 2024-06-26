import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class Tabs extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<Tabs> {
  TextEditingController _TabsController = TextEditingController();
  final List<String> jobs = [
    'Software Engineer',
    'Data Scientist',
    'Product Manager',
    'Designer',
    'DevOps Engineer',
    'Sales Manager',
    'Marketing Specialist',
    'Business Analyst',
  ];
  List<String> _filteredJobs = [];

  @override
  void initState() {
    super.initState();
    _TabsController.addListener(() {
      setState(() {
        _filteredJobs = jobs
            .where((job) => job
                .toLowerCase()
                .contains(_TabsController.text.toLowerCase()))
            .toList();
      });
    });
  }

  @override
  void dispose() {
    _TabsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50,20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Column(
              children: [
                SlideInLeft(
                  duration: Duration(seconds: 1),
                  child: Container(
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          color: Color(0x33525252),
                          offset: Offset(0, 2),
                          spreadRadius: 2,
                        )
                      ],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              child: TextField(
                                controller: _TabsController,
                                decoration: InputDecoration(
                                  hintText: 'Search openings',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Readex Pro',
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
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 10, 10),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFF3978F2),
                              shape: BoxShape.circle,
                            ),
                            child: SlideInRight(
                              duration: Duration(seconds: 1),
                              child: Icon(
                                Icons.search,
                                color: Color(0xFFFFFFFF),
                                size: 24,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (_TabsController.text.isNotEmpty)
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 10, 0, 6),
                    child: Container(
                      width: 380,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            color: Color(0x33525252),
                            offset: Offset(0, 2),
                            spreadRadius: 2,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: _filteredJobs.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(_filteredJobs[index]),
                            onTap: () {
                              setState(() {
                                _TabsController.text = _filteredJobs[index];
                                _filteredJobs = [];
                              });
                            },
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
    );
  }
}
