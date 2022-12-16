import 'package:flutter/material.dart';

class Dugme extends StatefulWidget {
  const Dugme({super.key});

  @override
  State<Dugme> createState() => _DugmeState();
}

class _DugmeState extends State<Dugme> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
        child: Text(
          '1934',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
