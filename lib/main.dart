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
                    '${pitanja[1].pitanje}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Dugme(),
              Dugme(),
              Dugme(),
              Dugme(),
              Dugme(),
            ],
          ),
        ),
      ),
    );
  }
}
