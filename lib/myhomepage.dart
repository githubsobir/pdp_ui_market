import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  static final String id = 'MyHomePage';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        title: Text(
          'Cars',
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.red,
              ),
              color: Colors.red),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, 'All'),
                    singleTab(false, 'Red'),
                    singleTab(false, 'Blue'),
                    singleTab(false, 'Yellow'),
                    singleTab(false, 'Green'),
                    singleTab(false, 'All'),
                    singleTab(false, 'All'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              //  #makeItems
              makeItems('assets/images/im_car1.jpg'),
              makeItems('assets/images/im_car2.jpg'),
              makeItems('assets/images/im_car3.jpg'),
              makeItems('assets/images/im_car4.png'),
              makeItems('assets/images/im_car5.jpg'),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleTab(bool type, String text) {
    return AspectRatio(
      aspectRatio: 2.3 / 1,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: type ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: type ? Colors.white : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget makeItems(String name) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(name), fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(0, 8),
          )
        ],
      ),
      child: Container(
        // margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    SizedBox(height: 40),
                    Text(
                      'PDP Car',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Electric',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '100\$',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 35,
              width: 35,
              // color: Colors.red,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
