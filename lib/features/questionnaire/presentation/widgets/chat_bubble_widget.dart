import 'package:course_online/core/common/styles/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendCustomBubble extends StatelessWidget {
 final String message;
 final Color color;
 final Color strokColor;
 final double strokWidth;

  const SendCustomBubble(
      {super.key,
      required this.message,
      required this.color,
      required this.strokColor,
      required this.strokWidth});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: CustomPaint(
            painter: BorderPainter(color: strokColor, strokeWidth: strokWidth),
          ),
        ),
        ClipPath(
          clipper: CarveClipper(),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 8,
            decoration: BoxDecoration(
              color: color,
            ),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 55, right: 13.5),
              child: Center(
                child: Text(
                  message,
                  style: getTextStyle(
                      fontSize: 16.sp,
                      lineHeight: 24,
                      fontWeight: FontWeight.w300,
                      textAlign: TextAlign.center),
                ),
              ),
            )),
          ),
        ),
      ],
    );
  }
}

class CarveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    double width = size.width;
    double height = size.height;
    double marginLeft = width * .6 / 10;

    path.addRRect(RRect.fromRectAndRadius(
        Rect.fromLTRB(marginLeft, 0, width, height),
        const Radius.circular(10)));

    path.moveTo(marginLeft, height * 3 / 4);
    path.lineTo(0, height / 1);
    path.lineTo(marginLeft, height / 2.5);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class BorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;

  BorderPainter({required this.color, required this.strokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    Path borderPath = CarveClipper().getClip(size);
    canvas.drawPath(borderPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
