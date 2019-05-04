import 'package:flutter/material.dart';

import 'package:cash_app/elements/AppTopBar.dart';
import 'package:cash_app/elements/AppBottomBar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: new AppTopBar().getTopBar("Flutter cash app", context, true),

      body: new Stack(
        children: <Widget>[
          Center(
            child: ListTile(
                title: new Icon(Icons.account_balance_wallet, size: 50.0, color: Colors.grey,),
                subtitle: new Row(
                  children: <Widget>[
                    new Text("Waste, no money!", style: TextStyle(fontSize: 18.0),)
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,)
            ),
          )
        ],
      ),

      bottomNavigationBar: new AppBottomBar().getBar()
    );
  }
}