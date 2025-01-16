import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Size size = Size(600, 600);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              child: ClipRRect(
                // borderRadius: BorderRadius.all(
                //   Radius.circular(50),
                // ),
                clipper: MyClipper(),
                child: Image.asset("assets/images/back.jpg"),
              ),
            ),
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
                  setState(() {});
                },
                child: Text("data"))
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<RRect> {
  @override
  RRect getClip(Size size) {
    // TODO: implement getClip
    return RRect.fromLTRBXY(
      10,
      100,
      size.width - 50,
      size.height - 10,
      10,
      50,
    );
  }

  @override
  bool shouldReclip(covariant CustomClipper<RRect> oldClipper) {
    return true;
  }
}
