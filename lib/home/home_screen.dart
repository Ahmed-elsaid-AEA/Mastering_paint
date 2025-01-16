import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Size size = Size(600, 600);
  double top = 20;
  double left = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipPath(
              // clipBehavior: Clip.none,
              clipper: MyClipperPath(),
              child: Image.asset("assets/images/back.jpg"),
            ),
            // Container(
            //   color: Colors.red,
            //   child: ClipRRect(
            //     // borderRadius: BorderRadius.all(
            //     //   Radius.circular(50),
            //     // ),
            //     clipper: MyClipper(size, top, left),
            //     child: Image.asset("assets/images/back.jpg"),
            //   ),
            // ),
            // ClipRect(
            //   // clipBehavior: Clip.none,
            //   clipper: MyClipper(size),
            //   child: Container(
            //     color: Colors.red,
            //     child: FlutterLogo(
            //       size: 600,
            //     ),
            //   ),
            // ),

            ElevatedButton(
                onPressed: () {
                  size = Size(300, 300);
                  top = 100;
                  left = 200;
                  setState(() {});
                },
                child: Text("data"))
          ],
        ),
      ),
    );
  }
}

class MyClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(200, 20);
    path.lineTo(50, 70);
     // path.close();
    // // path.relativeLineTo(50, 200);
    // // path.lineTo(100, 270);
    // path.moveTo(size.width, size.height);
    // path.lineTo(size.width - 50, size.height - 50);
    // path.lineTo(size.width - 300, size.height - 50);
    // path.close();
    //
    // path.moveTo(size.width, 0);
    // path.lineTo(size.width, 50);
    // path.lineTo(200, 50);
    // path.close();
    //
    // path.moveTo(size.width, 0);
    // path.lineTo(size.width, 50);
    // path.lineTo(200, 50);
    // Rect rect=Rect.fromLTRB(0, 0, size.width, size.height);
    // path.addArc(rect, 10, 130);
    print(path.contains(Offset(0, 0))); // path.lineTo(x, y)
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
