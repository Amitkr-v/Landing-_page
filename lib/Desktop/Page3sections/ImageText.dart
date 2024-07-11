import 'package:flutter/material.dart';

class ImageTextWidget extends StatelessWidget {
  final String t1;
  final String t2;
  final String image;

  ImageTextWidget(this.t1, this.t2, this.image);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              //height:MediaQuery.of(context).size.height*0.3,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    color: Color.fromARGB(51, 137, 136, 136),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 30, top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.38,
                child: Column(
                  children: [
                    Text(
                      t1,
                      style: TextStyle(
                        fontSize: 40,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    Text(
                      t2,
                      style: TextStyle(
                        fontSize: 25,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
