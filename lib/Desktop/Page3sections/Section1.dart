import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Desktop/Page3sections/ImageText.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Section1 extends StatefulWidget {
  @override
  _Section1State createState() => _Section1State();
}

class _Section1State extends State<Section1> {
  late PageController _controller;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    Future.delayed(const Duration(milliseconds: 500), _startTimer);
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_controller.hasClients) {
        final int nextPage = (_controller.page!.round() + 1) % 3;
        _controller.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 90),
          child: Text.rich(
            TextSpan(children: [
              const TextSpan(
                text: '\nExplore, ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: 'Connect, ',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'AmsterdamOne',
                  letterSpacing: 2,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF704FE6),
                ),
              ),
              const TextSpan(
                text: 'Engage: Unveiling the Journey!\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ]),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 40),
        Container(
          height: 350, // Fixed height for the PageView
          child: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _controller,
            children: [
              ImageTextWidget(
                "Explore & Discover",
                "Connect with Bihar's brightest startups based on various criteria and search options.",
                'assets/images/Exp.png',
              ),
              ImageTextWidget(
                "Connect with Startup",
                "Initiate connections with startups to explore opportunities and collaborations.",
                'assets/images/star.png',
              ),
              ImageTextWidget(
                "Engage Service",
                "Actively participate and utilize startup services to support Bihar's entrepreneurial growth.",
                'assets/images/eng.png',
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          effect: WormEffect(
            dotColor: Colors.grey,
            dotWidth:10,
            dotHeight:10,
            activeDotColor: Color(0xFF102C57),
          ),
        ),
      ],
    );
  }
}
