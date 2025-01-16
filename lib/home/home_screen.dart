import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRect(
          clipper: MyClipper(),
          child: Container(
            color: Colors.red,
            child: FlutterLogo(
              size: 600,
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: 100,
    );
    //r : 100
    return Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: 200,
      height: 200,
    );
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
