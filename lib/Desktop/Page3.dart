import 'package:flutter/material.dart';
import 'dart:async';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Page3_ extends StatefulWidget {
  @override
  _Page3_State createState() => _Page3_State();
}

class _Page3_State extends State<Page3_> {
  late PageController controller;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    controller = PageController();
    WidgetsBinding.instance.addPostFrameCallback((_) => startTimer());
  }

  @override
  void dispose() {
    timer.cancel();
    controller.dispose();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (controller.hasClients) {
        final currentPage = controller.page;
        if (currentPage == null) {
          print("controller.page is null");
          return;
        }
        final int nextPage = (currentPage.round() + 1) % 4;
        controller.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: controller,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              phase4(
                "1",
                "Shri Pranav Kumar, I.A.S. Secretary, Home Department, Bihar",
                "Samaksh App was my Idea to ensure teacher's punctuality and to increase student's daily turnout. I am glad that Nishant puts his best efforts to develop this app. After a year of evaluation, this app turns out to be very efficient and effective and bring about a positive change in this regard and also the school's opening punctuality increases to 96% within a year.",
              ),
              phase4(
                "Vinod Shukla",
                "Shri Pranav Kumar, I.A.S. Secretary, Home Department, Bihar",
                "Samaksh App was my Idea to ensure teacher's punctuality and to increase student's daily turnout. I am glad that Nishant puts his best efforts to develop this app. After a year of evaluation, this app turns out to be very efficient and effective and bring about a positive change in this regard and also the school's opening punctuality increases to 96% within a year.",
              ),
              phase4(
                "Munna Tripathi",
                "Shri Pranav Kumar, I.A.S. Secretary, Home Department, Bihar",
                "Samaksh App was my Idea to ensure teacher's punctuality and to increase student's daily turnout. I am glad that Nishant puts his best efforts to develop this app. After a year of evaluation, this app turns out to be very efficient and effective and bring about a positive change in this regard and also the school's opening punctuality increases to 96% within a year.",
              ),
              phase4(
                "Tony Stark",
                "Shri Pranav Kumar, I.A.S. Secretary, Home Department, Bihar",
                "Samaksh App was my Idea to ensure teacher's punctuality and to increase student's daily turnout. I am glad that Nishant puts his best efforts to develop this app. After a year of evaluation, this app turns out to be very efficient and effective and bring about a positive change in this regard and also the school's opening punctuality increases to 96% within a year.",
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
          child: SmoothPageIndicator(
            controller: controller,
            count: 4,
            effect: ScrollingDotsEffect(
              dotWidth: 12.0,
              dotHeight: 12.0,
              strokeWidth: 1,
              fixedCenter: true,
              paintStyle: PaintingStyle.stroke,
              dotColor: Colors.orange,
            ),
          ),
        ),
      ],
    );
  }
}

class phase4 extends StatelessWidget {
  final String dp;
  final String testimonial1;
  final String name;

  phase4(this.dp, this.name, this.testimonial1);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            child: ClipRect(
              child: Image.asset(
                'assets/images/profile.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 120),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: testimonial1,
                    style: TextStyle(
                      color: Color.fromARGB(255, 65, 65, 65),
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 600,
                height: 50,
                child: RichText(
                  text: TextSpan(
                    text: name,
                    style: TextStyle(
                      color: Color.fromARGB(255, 1, 1, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectableText(
                      'Get started for free',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 17, 146, 251),
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      child: ClipRect(
                        child: Image.asset(
                          'assets/images/ra.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
