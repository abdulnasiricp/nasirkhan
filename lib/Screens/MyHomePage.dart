import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Image.asset('Assets/images/bag.jpg'),
              Image.asset('Assets/images/shopping.jpg'),
              SizedBox(
                height: 100,
              ),
              RaisedButton.icon(
                icon: Icon(Icons.shopping_cart),
                label: Text(
                  'Shopping App',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.brown,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'SignIn');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
