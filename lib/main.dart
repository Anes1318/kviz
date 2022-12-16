import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kviz/components/dugme.dart';
import 'package:kviz/components/pitanje.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  List<Pitanje> pitanja = [
    Pitanje(
      pitanje: 'Kad je umro Josip Broz Tito?',
      odgovor1: '1980',
      odgovor2: '1976',
      odgovor3: '1982',
      odgovor4: '1978',
    ),
    Pitanje(
      pitanje: 'Koliko kocka ima strana?',
      odgovor1: '4',
      odgovor2: '6',
      odgovor3: '3',
      odgovor4: '8',
    )
  ];
  int x = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white60,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    '${pitanja[x].pitanje}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Dugme(
                odgovor: pitanja[x].odgovor1,
              ),
              Dugme(
                odgovor: pitanja[x].odgovor2,
              ),
              Dugme(
                odgovor: pitanja[x].odgovor3,
              ),
              Dugme(
                odgovor: pitanja[x].odgovor4,
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(
                    () {
                      x = Random().nextInt(2);
                    },
                  );
                },
              ),
              Text('$x'),
            ],
          ),
        ),
      ),
    );
  }
}
