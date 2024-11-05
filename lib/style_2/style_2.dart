import 'package:flutter/material.dart';

class Style2 extends StatefulWidget {
  final String imgUrl;
  final double initialValue;
  const Style2({
    super.key,
    required this.imgUrl,
    required this.initialValue,
  });

  @override
  State<Style2> createState() => _Style2State();
}

class _Style2State extends State<Style2> {
  late double _dragPosition;
  double min = 0;
  double max = 1;

  @override
  void initState() {
    super.initState();
    _dragPosition = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;
      return Stack(
        alignment: Alignment.centerLeft,
        children: [
          ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.green,
              BlendMode.hardLight,
            ),
            child: Image.network(
              widget.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          ClipRect(
            clipper: MyCustomClipper(_dragPosition / 300),
            child: Image.network(
              widget.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: _dragPosition,
            child: GestureDetector(
              onHorizontalDragStart: (details) {
                setState(() {});
              },
              onHorizontalDragUpdate: (details) {
                setState(() {
                  final newPosition = _dragPosition + details.delta.dx;
                  _dragPosition = newPosition.clamp(0, width);
                  if (_dragPosition > 300) {
                    _dragPosition = 290;
                  }
                });
              },
              onHorizontalDragEnd: (details) {
                setState(() {});
              },
              onTapDown: (details) {
                setState(() {});
              },
              child: Container(
                width: 10,
                height: 165,
                color: Colors.red,
              ),
            ),
          ),
        ],
      );
    });
  }
}

class MyCustomClipper extends CustomClipper<Rect> {
  final double ratio;
  MyCustomClipper(this.ratio);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, size.width * ratio, size.height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
