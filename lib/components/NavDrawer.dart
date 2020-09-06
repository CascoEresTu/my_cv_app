import 'package:flutter/material.dart';
import './pages/destrezas.dart';
import './pages/hobbies.dart';

import '../main.dart';

class DrawerOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        shrinkWrap: true,
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Carlos Casco Valle"),
            accountEmail: new Text("cgcascovalle@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              radius: 80,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      'https://scontent-lga3-1.cdninstagram.com/v/t51.2885-19/s150x150/109915822_283082979774940_4717329696061423159_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com&_nc_ohc=RENWiuC83V0AX-R6r-J&oh=59cd9a877ccd5a2ef5f480871e6709b3&oe=5F7A4439')),
            ),
            decoration: new BoxDecoration(
              color: Color.fromRGBO(167, 43, 110, 0.5),
              /*image: DecorationImage(
                    image: AssetImage('images/earth.jpeg'), fit: BoxFit.cover)*/
            ),
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
          Divider(
            color: Colors.white,
            height: 2,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ), //here is a divider

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
          Divider(
            color: Colors.white,
            height: 2,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ), //here is a divider

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
