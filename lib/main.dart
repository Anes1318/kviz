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
  static List<Pitanje> pitanja = [
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
    Pitanje(
      pitanje:
          'Koje godine je Titanik potonuo u Atlantskom okeanu 15. aprila, djevičanskim putovanjem iz Sautemptona?',
      tacanOdgovor: '1912',
      odgovor1: '1916',
      odgovor2: '1918',
      odgovor3: '1917',
    ),
    Pitanje(
      pitanje: 'Koliko udisaja dnevno uzima ljudsko tijelo?',
      tacanOdgovor: '20000 dnevno',
      odgovor1: '10000 dnevno',
      odgovor2: '50000 dnevno',
      odgovor3: '100000 dnevno',
    ),
    Pitanje(
      pitanje:
          'Što je u vizitkarti Al Caponea navedeno da je njegovo zanimanje?',
      tacanOdgovor: 'Prodavac polovnog namestaja',
      odgovor1: 'Pekar',
      odgovor2: 'Kasir u marketu',
      odgovor3: 'Čistač snijega',
    ),
    Pitanje(
      pitanje: 'Kako se zove najveća tehnološka kompanija u Južnoj Koreji?',
      tacanOdgovor: 'Samsung',
      odgovor1: 'Xiaomi',
      odgovor2: 'Apple',
      odgovor3: 'Huawei',
    ),
    Pitanje(
      pitanje: 'Koja je najmanja ptica na svijetu?',
      tacanOdgovor: 'Kolibri',
      odgovor1: 'Vrabac',
      odgovor2: 'Detlić',
      odgovor3: 'Bjelovrata muharica',
    ),
  ];

  int x = Random().nextInt(pitanja.length);

  int mijenjanje(x) {
    int starox = x;
    x = Random().nextInt(pitanja.length);
    while (x == starox) {
      print('$x == starox $starox');
      x = Random().nextInt(pitanja.length);
      print('novo x = $x');
    }

    return x;
  }

  List<String> nesto = [
    'tacanOdgovor',
    'odgovor1',
    'odgovor2',
    'odgovor3',
  ];

  bool tacno = false;
  bool antiTacno = false;
  int jedan = 1;
  bool buttonDisabled = false;
  Widget build(BuildContext context) {
    List<String> odgovori = [
      pitanja[x].tacanOdgovor,
      pitanja[x].odgovor1,
      pitanja[x].odgovor2,
      pitanja[x].odgovor3
    ];
    odgovori.shuffle();
    x = mijenjanje(x);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // floatingActionButton: FloatingActionButton(onPressed: broji),
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
                odgovor: odgovori[0],
                kliknuliDugme: () {
                  setState(() {
                    if (odgovori[0] == pitanja[x].tacanOdgovor) {
                      print('Odgovori[0] = ${odgovori[0]}');
                      print(
                          'Pitanja[x].tacanOdgovor = ${pitanja[x].tacanOdgovor}');
                      print('Tacno');
                      tacno = true;
                    } else {
                      print('Odgovori[0] = ${odgovori[0]}');
                      print(
                          'Pitanja[x].tacanOdgovor = ${pitanja[x].tacanOdgovor}');
                      print('AntiTacno');

                      antiTacno = true;
                    }

                    Timer(Duration(milliseconds: 2000), () {
                      setState(() {
                        tacno = false;
                        antiTacno = false;
                      });
                    });
                  });
                },
              ),
              Dugme(
                odgovor: odgovori[1],
                kliknuliDugme: () {
                  setState(() {
                    if (odgovori[1] == pitanja[x].tacanOdgovor) {
                      tacno = true;
                    } else {
                      antiTacno = true;
                    }

                    Timer(Duration(milliseconds: 2000), () {
                      setState(() {
                        tacno = false;
                        antiTacno = false;
                      });
                    });
                  });
                },
              ),
              Dugme(
                odgovor: odgovori[2],
                kliknuliDugme: () {
                  setState(() {
                    if (odgovori[2] == pitanja[x].tacanOdgovor) {
                      tacno = true;
                    } else {
                      antiTacno = true;
                    }

                    Timer(Duration(milliseconds: 2000), () {
                      setState(() {
                        tacno = false;
                        antiTacno = false;
                      });
                    });
                  });
                },
              ),
              Dugme(
                odgovor: odgovori[3],
                kliknuliDugme: () {
                  setState(() {
                    if (odgovori[3] == pitanja[x].tacanOdgovor) {
                      tacno = true;
                    } else {
                      antiTacno = true;
                    }

                    Timer(Duration(milliseconds: 2000), () {
                      setState(() {
                        tacno = false;
                        antiTacno = false;
                      });
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
