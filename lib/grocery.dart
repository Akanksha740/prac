import 'package:flutter/material.dart';

class Grocery extends StatelessWidget {
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
                      "images/GRO.jpg",
                      scale: 6,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Center(
                        child: Text(
                      "Hyper Market",
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
                      "images/GRO.jpg",
                      scale: 6,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Center(
                        child: Text(
                      "Aapoorti Kirana",
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
                      "images/GRO.jpg",
                      scale: 6,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Center(
                        child: Text(
                      "More",
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
                      "images/GRO.jpg",
                      scale: 6,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Center(
                        child: Text(
                      "All in one",
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
