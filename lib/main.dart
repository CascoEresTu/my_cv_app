import 'package:flutter/material.dart';
import './components/NavDrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: new Dwidget());
  }
}

class Dwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Colors.black.withOpacity(0.5)),
            child: new ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  bottomRight: Radius.circular(35)),
              child: new DrawerOnly(),
            )),
        appBar: new AppBar(
          title: new Text('Mi CV', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/space.jpg'),
            fit: BoxFit.cover,
          )),
        ));
  }
}
