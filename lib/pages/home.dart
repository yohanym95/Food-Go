import 'package:flutter/material.dart';
import 'package:fooddelivery_app/views/foodcart.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imgUrl = [
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-4.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-3.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-2.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-8.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-4.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      appBar: AppBar(
        backgroundColor: Color(0xFF27DEBF),
        title: Text(
          'Food-Go',
          style: TextStyle(
            color: Color(0xFFFCFCFC),
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Color(0xFFFCFCFC),
            )),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Color(0xFFFCFCFC),
              ),
              onPressed: () {})
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Let's Eat \nOrder Your Food Now",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Color(0x55d2d2d2),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 20.0)),
                  )),
                  RaisedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    color: Color(0xFF27DEBF),
                  )
                ],
              ),
            ),
            SizedBox(height: 5,),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              children: <Widget>[
                foodCard(imgUrl[0], "Meat Plate", "200"),
                foodCard(imgUrl[0], "Meat Plate", "200"),
                foodCard(imgUrl[0], "Meat Plate", "200"),
                foodCard(imgUrl[0], "Meat Plate", "200"),
                foodCard(imgUrl[0], "Meat Plate", "200"),
                foodCard(imgUrl[0], "Meat Plate", "200")
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFfcfcfc),
          elevation: 3.0,
          unselectedItemColor: Colors.black,
          selectedItemColor: Color(0xFF27DEBF),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.store), title: Text('Our Shop')),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), title: Text('Favourite')),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile'))
          ]),
    );
  }
}