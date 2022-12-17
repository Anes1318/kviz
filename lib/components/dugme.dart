import 'package:flutter/material.dart';

class Dugme extends StatefulWidget {
  String odgovor;

  VoidCallback kliknuliDugme;

  Dugme({super.key, required this.odgovor, required this.kliknuliDugme});

  @override
  State<Dugme> createState() => _DugmeState();
}

class _DugmeState extends State<Dugme> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          widget.kliknuliDugme();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlue,
        ),
        child: Text(
          '${widget.odgovor}',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
