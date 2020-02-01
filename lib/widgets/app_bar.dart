import 'package:flutter/material.dart';


class AppBarr extends StatelessWidget {
  const AppBarr({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: WaveClipper2(),
            child: Container(
              child: Column(),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0x22ff3a5a), Color(0x22fe494d)])),
            ),
          ),
          ClipPath(
            clipper: WaveClipper3(),
            child: Container(
              child: Column(),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0x44ff3a5a), Color(0x44fe494d)])),
            ),
          ),
          ClipPath(
            clipper: WaveClipper1(),
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
//                        Image.network(
//                          "https://img.icons8.com/ios/50/000000/drop-of-blood--v2.png",
//                          color: Colors.white,
//                          height: 60.0,
//                          width: 60.0,
//                        ),
//                        SizedBox(
//                          height: 20,
//                        ),
                  Text(
                    "BloodX",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 30),
                  ),
                ],
              ),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffff3a5a), Color(0xfffe494d)])),
            ),
          ),
        ],
      ),
    );
  }
}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 29 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 60);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 15 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * .7, size.height - 40);
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 45);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
