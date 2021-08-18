import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = const Color(0xff161616);
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.625);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.5,
        size.width * 0.5, size.height * 0.625);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.75,
        size.width * 1.0, size.height * 0.70);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/cover_app.jpg"),
              fit: BoxFit.fitHeight)),
      child: new Container(
        child: CustomPaint(
          painter: CurvePainter(),
          child: new Stack(
            children: [
              new Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.06,
                      MediaQuery.of(context).size.height * 0.68,
                      0,
                      0),
                  child: Text(
                    "lorem ipsum",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
              new Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.06,
                      MediaQuery.of(context).size.height * 0.75,
                      0,
                      0),
                  child: Text(
                    "Lorem dolor sit amet, consectetur adipiscing elit. Maecenas vitae elementum lectus, quis porta quam. Morbi cursus iaculis velit in eleifend. Nam rutrum erat in lectus laoreet ultrices. Ut aliquet, purus at",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
              new Container(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, MediaQuery.of(context).size.height * 0.85, 0, 0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff2E2B2B),
                        ),
                        child: Text("Next"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => First()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
