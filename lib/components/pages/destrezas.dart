import 'package:flutter/material.dart';
import '../../components/NavDrawer.dart';
import '../../components/pages/summaryTech.dart';

class Destrezas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.black.withOpacity(0.5)),
          child: new DrawerOnly(),
        ),
        appBar: AppBar(
            title: new Text('Destrezas', style: TextStyle(color: Colors.white)),
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
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: CircleAvatar(
                                  backgroundImage:
                                      const AssetImage("images/c.png"),
                                  backgroundColor: Colors.transparent),
                              title: Text('C',
                                  style: TextStyle(color: Colors.white)),
                              onTap: () {
                                Navigator.pop(context);
                                /*Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            new SummaryWidget()));*/
                              },
                            ),
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
                                        "images/cplusplus.png"),
                                    backgroundColor: Colors.transparent),
                                title: Text('C++',
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
                                        const AssetImage("images/flutter.png"),
                                    backgroundColor: Colors.transparent),
                                title: Text('Flutter',
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
                                        const AssetImage("images/golang.png"),
                                    backgroundColor: Colors.transparent),
                                title: Text('Golang',
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
                                        const AssetImage("images/java.png"),
                                    backgroundColor: Colors.transparent),
                                title: Text('Java',
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
                                        const AssetImage("images/js.png"),
                                    backgroundColor: Colors.transparent),
                                title: Text('JavaScript',
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
                                        const AssetImage("images/node.png"),
                                    backgroundColor: Colors.transparent),
                                title: Text('NodeJS',
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
                                        const AssetImage("images/react.png"),
                                    backgroundColor: Colors.transparent),
                                title: Text('ReactJS',
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
                                        const AssetImage("images/vue.png"),
                                    backgroundColor: Colors.transparent),
                                title: Text('VueJS',
                                    style: TextStyle(color: Colors.white))),
                          ],
                        )),
                  ])))
        ]));
  }
}
