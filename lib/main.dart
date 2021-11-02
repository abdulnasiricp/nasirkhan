import 'package:flutter/material.dart';

import 'Screens/Dishboard/Dishboard.dart';
import 'Screens/MyHomePage.dart';
import 'Screens/Sign_in.dart';
import 'Screens/Sign_Up.dart';
import 'Screens/Home_Buttom_Button/Home.dart';
// import 'Screens/Home_Buttom_Button/Notification.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shopping App',
      initialRoute: 'MyHomePage',
      routes: {
        'MyHomePage': (context) => MyHomePage(),
        'SignIn': (context) => SignIn(),
        'SignUp': (context) => SignUp(),
        'Home': (context) => Home(),
        'Dishboard': (context) => Dishboard(),

        // 'Notification': (context) => Notification(),
      },
    );
  }
}

// void showDialogBox(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: new Text("Alert Dialog!!"),
//         content: new Text("You are awesome!"),
//         actions: <Widget>[
//           new FlatButton(
//             child: new Text("OK"),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//         ],
//       );
//     },
//   );
// }
