import 'dart:async';
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
      pitanje: 'Koje godine je umro Josip Broz Tito?',
      tacanOdgovor: '1980',
      odgovor1: '1976',
      odgovor2: '1982',
      odgovor3: '1978',
    ),
    Pitanje(
      pitanje: 'Koliko kocka ima strana?',
      tacanOdgovor: '6',
      odgovor1: '4',
      odgovor2: '3',
      odgovor3: '8',
    ),
    Pitanje(
      pitanje: 'Koliko macka ima nogu?',
      tacanOdgovor: '4',
      odgovor1: '2',
      odgovor2: '1',
      odgovor3: '6',
    ),
    Pitanje(
      pitanje: 'Koje godine je izasao PS2?',
      tacanOdgovor: '2000',
      odgovor1: '2006',
      odgovor2: '2008',
      odgovor3: '1998',
    ),
  ];

  int x = 0;
  int mijenjanje(x) {
    x = Random().nextInt(4);
    return x;
  }

  bool tacno = false;
  bool antiTacno = false;
  String hashirama = 'tacanOdgovor';
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
                odgovor: pitanja[x].tacanOdgovor,
                kliknuliDugme: () {
                  setState(() {
                    tacno = true;
                    print('PITE');
                    Timer(Duration(milliseconds: 1300), () {
                      setState(() {
                        tacno = false;
                      });
                      x = mijenjanje(x);
                    });
                  });
                },
              ),
              Dugme(
                odgovor: pitanja[x].odgovor1,
                kliknuliDugme: () {
                  setState(() {
                    antiTacno = true;
                    print('PITE');
                    Timer(Duration(milliseconds: 1300), () {
                      setState(() {
                        antiTacno = false;
                      });
                      x = mijenjanje(x);
                    });
                  });
                },
              ),
              Dugme(
                odgovor: pitanja[x].odgovor2,
                kliknuliDugme: () {
                  setState(() {
                    antiTacno = true;
                    print('PITE');
                    Timer(Duration(milliseconds: 1300), () {
                      setState(() {
                        antiTacno = false;
                      });
                      x = mijenjanje(x);
                    });
                  });
                },
              ),
              Dugme(
                odgovor: pitanja[x].odgovor3,
                kliknuliDugme: () {
                  setState(() {
                    antiTacno = true;
                    print('PITE');
                    Timer(Duration(milliseconds: 1300), () {
                      setState(() {
                        antiTacno = false;
                      });
                      x = mijenjanje(x);
                    });
                  });
                },
              ),
              SizedBox(height: 30),
              Visibility(
                visible: tacno,
                maintainAnimation: true,
                maintainState: true,
                maintainSize: false,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Tacan odgovor!',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: antiTacno,
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Text(
                        'Netacan odgovor!',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'Tacan odgovor je ${pitanja[x].tacanOdgovor}',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
