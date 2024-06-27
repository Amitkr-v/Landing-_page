import 'package:flutter/material.dart';

class ImageTextWidget1 extends StatelessWidget {
  final String t1;
  final String t2;
  final String image;

  ImageTextWidget1(this.t1, this.t2, this.image);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 180,
            decoration: BoxDecoration(
              boxShadow: [
                
              ],
              borderRadius: BorderRadius.circular(5),
            ),
            child: TweenAnimationBuilder<double>(
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: TweenAnimationBuilder<double>(
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
              width: MediaQuery.of(context).size.height * 0.4,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  t2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
