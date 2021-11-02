import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _onItemTapped(int index) {
    setState(() {
      // _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        toolbarHeight: 60.0,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              hintText: 'Search Fruit',
              contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
            ),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
        ],
      ),

      backgroundColor: Colors.yellowAccent[800],

      // appbar end

      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[300],
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        'Our Store',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 140.0, top: 32),
                      child: Text(
                        'More Fruit',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: IconButton(
                        icon: Icon(Icons.arrow_right_alt_sharp),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pushNamed(context, 'Dishboard');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        // height: 250.0,
                        width: 130,
                        margin: const EdgeInsets.symmetric(
                          // vertical: 14.0,
                          horizontal: 22.0,
                        ),
                        child: Container(
                          color: Colors.white,
                          child: new Column(
                            children: <Widget>[
                              Image(image: AssetImage("Assets/images/shopping.jpg")),
                              Text('Rs.100'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // height: 250.0,
                        width: 130,
                        margin: const EdgeInsets.symmetric(
                          // vertical: 14.0,
                          horizontal: 22.0,
                        ),
                        child: Container(
                          color: Colors.white,
                          child: new Column(
                            children: <Widget>[
                              Image(image: AssetImage("Assets/images/shopping.jpg")),
                              Text('Rs.100'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        'Best Summer Fruits',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, top: 32),
                      child: Text(
                        'More Fruit',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: IconButton(
                        icon: Icon(Icons.arrow_right_alt_sharp),
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        // height: 250.0,
                        width: 130,
                        margin: const EdgeInsets.symmetric(
                          // vertical: 14.0,
                          horizontal: 22.0,
                        ),
                        child: Container(
                          color: Colors.white,
                          child: new Column(
                            children: <Widget>[
                              Image(image: AssetImage("Assets/images/shopping.jpg")),
                              Text('Rs.100'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // height: 250.0,
                        width: 130,
                        margin: const EdgeInsets.symmetric(
                          // vertical: 14.0,
                          horizontal: 22.0,
                        ),
                        child: Container(
                          color: Colors.white,
                          child: new Column(
                            children: <Widget>[
                              Image(image: AssetImage("Assets/images/shopping.jpg")),
                              Text('Rs.100'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        // height: 250.0,
                        width: 130,
                        margin: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 22.0,
                        ),
                        child: Container(
                          color: Colors.white,
                          child: new Column(
                            children: <Widget>[
                              Image(image: AssetImage("Assets/images/shopping.jpg")),
                              Text('Rs.100'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // height: 250.0,
                        width: 130,
                        margin: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 22.0,
                        ),
                        child: Container(
                          color: Colors.white,
                          child: new Column(
                            children: <Widget>[
                              Image(image: AssetImage("Assets/images/shopping.jpg")),
                              Text('Rs.100'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        // currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
