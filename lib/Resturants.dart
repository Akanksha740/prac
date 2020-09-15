import 'package:flutter/material.dart';
import 'package:nogozo/haliramsmenu.dart';
import 'package:nogozo/kfcmenu.dart';
import 'package:nogozo/mojopizzamenu.dart';

import 'dominosmenu.dart';

class Resturants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            color: Colors.white,
            height: 200,
            child: Card(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "images/domino.jpg",
                      scale: 4,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DominosMenu()));
                    },
                    child: Center(
                        child: Text(
                      "Dominos",
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            color: Colors.white,
            height: 200,
            child: Card(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "images/kfc.jpg",
                      scale: 12.8,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => KfcMenu()));
                    },
                    child: Center(
                        child: Text(
                      "KFC",
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            color: Colors.white,
            height: 200,
            child: Card(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "images/mojo.jpg",
                      scale: 25,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Mojopizzamenu()));
                    },
                    child: Center(
                        child: Text(
                      "Mojo Pizza",
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            color: Colors.white,
            height: 200,
            child: Card(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "images/haldirams.jpg",
                      scale: 10,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HaldiramsMenu()));
                    },
                    child: Center(
                        child: Text(
                      "Haldirams",
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
