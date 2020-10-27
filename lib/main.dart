import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home : new MyApplication()
  ));
}
class MyApplication extends StatefulWidget {
  @override
  _State createState() => new _State();

}
class _State extends State<MyApplication> {

  final GlobalKey<ScaffoldState> scaffold = new GlobalKey<ScaffoldState>();

  void showBar() {
    scaffold.currentState.showSnackBar(new SnackBar(content: new Text("Hello World")));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: scaffold,
      appBar: new AppBar(
        title: new Text("Name here"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Hello World"),
              new RaisedButton(onPressed: showBar,child: new Text("data"),)
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }

}