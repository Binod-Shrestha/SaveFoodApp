import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GroceryWidget extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<GroceryWidget> {
  TextEditingController groceryListController = new TextEditingController();
  String _value = '';
  String _expiryDate = '';
  var dt = DateTime.now();
  var newFormat = DateFormat("yy-MM-dd");
  void _onClicked() => setState(() => _value = groceryListController.text);
  void _addExpiryDate() => setState(() => _expiryDate = newFormat.format(dt));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: _showDialog,
          backgroundColor: Colors.blue,
          mini: false,
          child: new Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          mini: false,
          child: new Icon(Icons.mic),
        ),
      ]),
      /*floatingActionButton: new FloatingActionButton(
          onPressed: _showDialog,
          backgroundColor: Colors.blue,
          mini: false,
          child: new Icon(Icons.add),
        ),*/
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/1.jpeg"),
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
        child: new Container(
          child: new Row(
            children: <Widget>[
              new Text(
                _value,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                width: 160.0,
              ),
              Text(_expiryDate, style: TextStyle(fontSize: 20.0)),
            ],
          ),
        ),
      ),
    );
  }

  _showDialog() async {
    await showDialog<String>(
      context: context,
      child: new AlertDialog(
        contentPadding: const EdgeInsets.all(16.0),
        content: new Row(
          children: <Widget>[
            new Expanded(
              child: new TextField(
                controller: groceryListController,
                autofocus: true,
                decoration: new InputDecoration(
                    labelText: 'Grocery Item', hintText: 'eg. Apple'),
              ),
            )
          ],
        ),
        actions: <Widget>[
          new FlatButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.pop(context);
              }),
          new FlatButton(
              child: const Text('Confirm'),
              onPressed: () {
                _onClicked();
                _addExpiryDate();
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
