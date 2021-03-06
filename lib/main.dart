import 'package:flutter/material.dart';

void main() => runApp(BullsEyeApp());

class BullsEyeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BullsEye',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GamePage(title: 'BullsEye'),
    );
  }
}

class GamePage extends StatefulWidget {
  GamePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  bool _alertIsVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to my first App!!',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
          ),
          TextButton(
              onPressed: () {
                this._alertIsVisible = true;
                _showAlert(context);
                print("Button pressed");
              },
              child: Text(
                'Hit me!',
                style: TextStyle(color: Colors.blue),
              ))
        ],
      ),
    ));
  }

  void _showAlert(BuildContext context) {
    Widget okButton = TextButton(
        onPressed: () {
          Navigator.of(context).pop();
          this._alertIsVisible = false;
          print("Awsome pressed! $_alertIsVisible");
        },
        child: Text("Awsome!"));
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Hello there!"),
            content: Text("This is my first pop-up"),
            actions: [okButton],
            elevation: 5,
          );
        });
  }
}
