import 'package:flutter/material.dart';

class LabBMP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Table(
              border: TableBorder(
                  horizontalInside: BorderSide(width: 4.0),
                  verticalInside: BorderSide(width: 4.0)),
              children: [
                TableRow(
                  children: [
                    _labText('na'),
                    _labText('cl'),
                    _labText('bun'),
                  ],
                ),
                TableRow(
                  children: [
                    _labText('k'),
                    _labText('co2'),
                    _labText('creat'),
                  ],
                ),
              ],
            ),
          ),
          _labTextWithV('glc'),
        ],
      ),
    );
  }
}

class LabCBC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _labTextWithV('wbc', Colors.blue, true),
        IntrinsicWidth(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _labText('hb'),
              Divider(
                color: Colors.black,
                thickness: 4.0,
              ),
              _labText('hct'),
            ],
          ),
        ),
        _labTextWithV('plt', Colors.orange),
      ],
    );
  }
}

_labText(String s, [Color c = Colors.red]) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.all(8.0),
    // color: c,
    child: Text(s),
  );
}

_labTextWithV(String s, [Color c = Colors.red, bool onLeft = false]) {
  return Container(
    // margin: EdgeInsets.all(8.0),
    // color: c,
    child: CustomPaint(
      painter: _PaintV(onLeft: onLeft),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 48.0),
          padding: (onLeft)
              ? EdgeInsets.only(right: 32.0)
              : EdgeInsets.only(left: 32.0),
          child: Text(s)),
    ),
  );
}

class _PaintV extends CustomPainter {
  bool onLeft;

  _PaintV({this.onLeft = false});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.black;
    paint.strokeWidth = 4.0;

    // top line
    (onLeft)
        ? canvas.drawLine(
            Offset(0, 0), Offset(size.width, size.height / 2), paint)
        : canvas.drawLine(
            Offset(size.width, 0), Offset(0, size.height / 2), paint);

    // bottom line
    (onLeft)
        ? canvas.drawLine(
            Offset(0, size.height), Offset(size.width, size.height / 2), paint)
        : canvas.drawLine(
            Offset(size.width, size.height), Offset(0, size.height / 2), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
