import 'package:flutter/material.dart';

//ana mesh 3arf l clipper dh by3mal eh f ana hafham fel goz2 dh eh hya wazeft l clipper bel zabt
// l clipper hwgh dukd المقلم او القاصص y3ny hwa kool faydto fel 7yah ano hay2os l contaier aw l child bta3o
//hy2os l container bel shape aly ana hadholo fel path
//l path dh bybda2 mn (0&0) top left w haymshy b2a 3la artfa3 l container (0,400) kda ana wa2f fel bottom left
class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    //l code dh aly hay2t3 l design bel tool w bel 3ard hatb2a sambpxa kda ..shaklo 7lw hast5dmo kteer
    /*
    //code number 1
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
     */
    /*
    //code number 2
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
     */
    path.lineTo(0.0, size.height);
    var firstControlPoint = Offset(size.width * 0.25, size.height - 50.0);
    var firstEndPoint = Offset(size.width * 0.5, size.height - 35.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    var secondControlPoint = Offset(size.width * 0.75, size.height - 10);
    var secondEndPoint = Offset(size.width, size.height - 80.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
