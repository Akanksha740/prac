import 'package:flutter/material.dart';

class DominosMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.white,
            height: 200,
            width: 180,
            child: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.teal,
                child: InkWell(
                  onTap: () {},
                  child: Center(
                      child: Text(
                    "Pepperoni Pizza",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.white,
            height: 200,
            width: 180,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.redAccent,
              child: InkWell(
                onTap: () {},
                child: Center(
                    child: Text(
                  "Margherita Pizza",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.white,
            height: 200,
            width: 180,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.blue,
              child: InkWell(
                onTap: () {},
                child: Center(
                    child: Text(
                  "Macroccan Spice Pasta Pizza",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: Colors.white,
            height: 200,
            width: 180,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.brown,
              child: InkWell(
                onTap: () {},
                child: Center(
                    child: Text(
                  "Creamy Tomato Pasta Pizza",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
