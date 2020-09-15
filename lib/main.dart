import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Resturants.dart';
import 'grocery.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  double _safePaddingTop, _safePaddingBottom, _height, _width, _keyboard;
  @override
  Widget build(BuildContext context) {
    _safePaddingTop = MediaQuery.of(context).padding.top;
    _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);
    _keyboard = MediaQuery.of(context).viewInsets.bottom;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                title: new Text(
                  "NOGOZO",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              Container(
                height: _height * 0.15,
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    Text(
                      ' Back',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0),
                    ),
                  ],
                ),
              ),
              Container(
                height: _height * 0.75,
                width: _width * 0.85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: new EdgeInsets.all(10),
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Material(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Grocery()));
                                  },
                                  child: Center(
                                    child: new Image.asset(
                                      "images/gro.webp",
                                      scale: 7,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Grocery',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: new EdgeInsets.all(12),
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Material(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Resturants()));
                                  },
                                  child: Center(
                                    child: new Image.asset(
                                      "images/food.png",
                                      scale: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Resturant',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: new EdgeInsets.all(15),
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Material(
                                child: InkWell(
                                  highlightColor: Colors.black,
                                  onTap: () {},
                                  child: Material(
                                    child: InkWell(
                                      onTap: () {},
                                      child: Center(
                                        child: new Image.asset(
                                          "images/veg.png",
                                          scale: 5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Vegetables',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(18),
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Material(
                                child: InkWell(
                                  onTap: () {},
                                  child: Center(
                                    child: new Image.asset(
                                      "images/sta.webp",
                                      scale: 5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Sationary',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Material(
                                child: InkWell(
                                  onTap: () {},
                                  child: Center(
                                    child: new Image.asset(
                                      "images/tab.jpg",
                                      scale: 11,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Medicines',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: new EdgeInsets.all(18),
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Material(
                                child: InkWell(
                                  onTap: () {},
                                  child: Material(
                                    child: InkWell(
                                      highlightColor: Colors.black,
                                      onTap: () {},
                                      child: Center(
                                        child: new Image.asset(
                                          "images/others.jpg",
                                          scale: 11,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Others',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
