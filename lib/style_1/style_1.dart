import 'package:flutter/material.dart';

class Style1 extends StatelessWidget {
  final String imgUrl;
  const Style1({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: <Widget>[
        ColorFiltered(
          colorFilter:
              const ColorFilter.mode(Colors.green, BlendMode.hardLight),
          child: Image.network(
            imgUrl,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 300,
          height: 165,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Image.network(
                imgUrl,
                fit: BoxFit.cover,
              ),
              Container(
                height: 165,
                width: 4,
                color: Colors.red,
              ),
              Opacity(
                opacity: 0,
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
