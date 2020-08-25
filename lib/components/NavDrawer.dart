import 'package:flutter/material.dart';
import './pages/destrezas.dart';
import './pages/hobbies.dart';

import '../main.dart';

class DrawerOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new DrawerHeader(
            child: new Text("MI CV"),
            decoration: new BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('images/earth.jpeg'), fit: BoxFit.cover)),
          ),
          new ListTile(
              leading: const Icon(Icons.home, color: Colors.white),
              title: new Text('Home',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new Dwidget()));
              }),
          new ListTile(
              leading: const Icon(Icons.assignment, color: Colors.white),
              title: new Text('Mis destrezas',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new Destrezas()));
              }),
          new ListTile(
              leading: const Icon(Icons.music_note, color: Colors.white),
              title: new Text('Hobbies',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new Hobbies()));
              }),
        ],
      ),
    );
  }
}
