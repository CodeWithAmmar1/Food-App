import 'package:flutter/material.dart';

class Homecontainer extends StatefulWidget {
  final String title;
  final AssetImage image;
  final Color color;
  const Homecontainer({
    super.key,
    required this.title,
    required this.image,
    required this.color,
  });

  @override
  State<Homecontainer> createState() => _HomecontainerState();
}

class _HomecontainerState extends State<Homecontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 80,
      height: 130,
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: widget.color,
              image: DecorationImage(image: widget.image, fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              widget.title,
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
