import 'package:flutter/material.dart';

class ImageTextWidget1 extends StatelessWidget {
  final String t1;
  final String t2;
  final String image;

  ImageTextWidget1(this.t1, this.t2, this.image);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 140,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 240, 240, 240),
              
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
          Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.height * 0.28,
                  child: Text(
                    t1,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 10, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.height * 0.28,
                  child: Text(
                    t2,
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
