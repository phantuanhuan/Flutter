import 'package:flutter/material.dart';

void main() => runApp(MyApp());
void handleSubmitted(String text){
  textController.clear();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget buildTextComposer() {
    return new IconTheme(
        data: new IconThemeData(color: Theme.of(context).accentColor),
        child: new Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: new Row(
            children: <Widget>[
              new Flexible(
                  child: new TextField(
                    controller: textController,
                    onSubmitted: handleSubmitted,
                    decoration:
                    new InputDecoration.collapsed(hintText: "Send a message"),
                  ),
              ),
              new Container(
                margin: new EdgeInsets.symmetric(horizontal: 4.0),
                child: new ,
              ),
            ],
          ),
        ),
    );

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController textController = new TextEditingController();

  @override
  Widget buildTextComposer() {
  return new Container(
  margin: const EdgeInsets.symmetric(horizontal: 8.0),
  child: new TextField(
  controller: textController,
  onSubmitted: handleSubmitted,
  decoration: new InputDecoration.collapsed(hintText: "Send a message"),

  ),
  );

  }
