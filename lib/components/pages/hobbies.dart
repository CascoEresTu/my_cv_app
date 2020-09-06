import 'package:flutter/material.dart';
import '../../components/NavDrawer.dart';

class Hobbies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.black.withOpacity(0.5)),
          child: new DrawerOnly(),
        ),
        appBar: AppBar(
            title: new Text('Hobbies', style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.black),
        body: Stack(children: <Widget>[
          new Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
            image: AssetImage('images/space.jpg'),
            fit: BoxFit.cover,
          ))),
          new SingleChildScrollView(
              child: new Container(
                  color: Colors.transparent,
                  child: new Column(children: <Widget>[
                    Card(
                        color: Color.fromRGBO(167, 43, 110, 0.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                                leading: CircleAvatar(
                                    backgroundImage:
                                        const AssetImage("images/guitarra.png"),
                                    backgroundColor: Colors.transparent),
                                title: Text(
                                    'Me gusta tocar la guitarra y componer musica en MIDI.',
                                    style: TextStyle(color: Colors.white))),
                          ],
                        )),
                    Card(
                        color: Color.fromRGBO(167, 43, 110, 0.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                                leading: CircleAvatar(
                                    backgroundImage: const AssetImage(
                                        "images/horneando.png"),
                                    backgroundColor: Colors.transparent),
                                title: Text(
                                    'Me gusta hornear y preparar comidas para mi familia.',
                                    style: TextStyle(color: Colors.white))),
                          ],
                        )),
                    Card(
                        color: Color.fromRGBO(167, 43, 110, 0.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                                leading: CircleAvatar(
                                    backgroundImage:
                                        const AssetImage("images/megaman.gif"),
                                    backgroundColor: Colors.transparent),
                                title: Text(
                                    'Videojuegos, en especial plaformers, jRPGs y juegos de pelea.',
                                    style: TextStyle(color: Colors.white))),
                          ],
                        )),
                  ])))
        ]));
  }
}
