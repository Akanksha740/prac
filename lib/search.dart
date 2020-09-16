import 'package:flutter/material.dart';
import 'package:nogozo/Resturants.dart';

class Shop {
  final String name;
  final String image;
  Shop({this.name, this.image});
}

List shoplist = [
  Shop(
    name: 'Dominos',
    image: 'images/domino.jpg',
  ),
  Shop(
    name: 'KFC',
    image: 'images/kfc.jpg',
  ),
  Shop(
    name: 'Mojo',
    image: 'images/mojo.jpg',
  ),
  Shop(
    name: 'Haldirams',
    image: 'images/haldirams.jpg',
  ),
];

class SearchItem {
  final List menu;
  SearchItem({this.menu});
  var menulist = [
    'Pepperoni Pizza',
    'Margherita Pizza',
    'Macroccan Spice Pasta Pizza',
    'Creamy Tomato Pasta Pizza',
    'Chicken Zinger',
    'Veg Zinger',
    'Pop Corn Chicken',
    'Chicken Wings',
    'Deluxe Veggie Pizza',
    'Peppy Paneer Pizza',
    'Pasta Pizza',
    'Zesty Chicken Pizza',
    'Vada Pao',
    'Pani Puri',
    'Raj Kachori',
    'Pav Bhaji',
  ];
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int i;
  List suggestionlist = shoplist;

  void _filter(value) {
    setState(() {
      suggestionlist = value.isEmpty
          ? shoplist
          : shoplist
              .where((element) =>
                  element.name.toLowerCase().contains(value.toLowerCase()))
              .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    double y = MediaQuery.of(context).size.height;
    double x = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: x * 0.03, vertical: y * 0.013),
              child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: null,
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.search, color: Colors.white),
                      ),
                      onChanged: (value) {
                        _filter(value);
                      },
                    ),
                  )),
            ),
            SizedBox(height: 20),
            for (i = 0; i < suggestionlist.length; i++)
              ShopCard(shop: suggestionlist[i]),
          ]),
        ),
      ),
    );
  }
}

class ShopCard extends StatelessWidget {
  ShopCard({this.shop});
  final Shop shop;
  @override
  Widget build(BuildContext context) {
    double y = MediaQuery.of(context).size.height;
    double x = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .push(new MaterialPageRoute(builder: (context) => Resturants())),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: x * 0.025, vertical: x * 0.03),
        height: y * 0.1,
        width: x,
        color: Colors.white70,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: x * 0.025),
              height: 45,
              width: 80,
              child: Image.asset(shop.image),
            ),
            Container(
              child: Text(shop.name),
            ),
          ],
        ),
      ),
    );
  }
}
