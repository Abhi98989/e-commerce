import 'package:flutter/material.dart';

class CustomCurvedEdge extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path =Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height -20);
    final lastCurve = Offset(30, size.height -20);
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondfirstCurve = Offset(0, size.height-20);
    final secondlastCurve = Offset(size.width-30, size.height-20);
    path.quadraticBezierTo(secondfirstCurve.dx, secondfirstCurve.dy, secondlastCurve.dx,secondlastCurve.dy);

    final threefirstCurve =Offset(size.width, size.height-20);
    final threelastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(threefirstCurve.dx, threefirstCurve.dy, threelastCurve.dx, threelastCurve.dx);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}

// class CustomCurvedEdge extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0.0, size.height - 70);

//     var firstControlPoint = Offset(size.width / 2, size.height);
//     var firstEndPoint = Offset(size.width, size.height - 70);
//     path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
//         firstEndPoint.dx, firstEndPoint.dy);

//     path.lineTo(size.width, 0.0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }