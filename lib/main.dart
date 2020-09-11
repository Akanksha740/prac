import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              Center(
                child: Text(
                  'Maintenance',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
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
                height: _height * 0.80,
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
                                  highlightColor: Colors.black,
                                  onTap: () {},
                                  child: Center(
                                    child: new Image.asset(
                                      "images/electrician.png",
                                      scale: 4,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Electrician',
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
                          margin: new EdgeInsets.all(25),
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Material(
                                child: InkWell(
                                  highlightColor: Colors.black,
                                  onTap: () {},
                                  child: Center(
                                    child: new Image.asset(
                                      "images/sweep.jpg",
                                      scale: 12.8,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Cleaner',
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
                          margin: new EdgeInsets.all(10),
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Material(
                                child: InkWell(
                                  highlightColor: Colors.black,
                                  onTap: () {},
                                  child: Material(
                                    child: InkWell(
                                      highlightColor: Colors.black,
                                      onTap: () {},
                                      child: Center(
                                        child: new Image.asset(
                                          "images/plumber.png",
                                          scale: 2,
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
                          'Plumber',
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
                                  highlightColor: Colors.black,
                                  onTap: () {},
                                  child: Center(
                                    child: new Image.asset(
                                      "images/fur.png",
                                      scale: 5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Furniture',
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
                          margin: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Material(
                                child: InkWell(
                                  highlightColor: Colors.white,
                                  onTap: () {},
                                  child: Center(
                                    child: new Image.asset(
                                      "images/food.jpg",
                                      scale: 4,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Mess Food',
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
                                  highlightColor: Colors.black,
                                  onTap: () {},
                                  child: Material(
                                    child: InkWell(
                                      highlightColor: Colors.black,
                                      onTap: () {},
                                      child: Center(
                                        child: new Image.asset(
                                          "images/others.png",
                                          scale: 4,
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
