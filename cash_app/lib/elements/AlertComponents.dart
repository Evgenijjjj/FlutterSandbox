import 'package:flutter/material.dart';

import 'package:cash_app/pages/category.dart';
import 'package:cash_app/pages/expense.dart';
import 'package:cash_app/pages/income.dart';

class AlertComponents extends StatefulWidget {
  @override
  _AlertComponentsState createState() => _AlertComponentsState();
}

class _AlertComponentsState extends State<AlertComponents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
//                        this is a button to add new income
        new Row(
          children: <Widget>[
            new Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.attach_money)),
            new Padding(
              padding: EdgeInsets.all(2.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Income()));
                },
                child: new Text("Incomes"),
              ),
            )
          ],
        ),
//                        this is a button to add new expense
        new Row(
          children: <Widget>[
            new Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.money_off)),
            new Padding(
              padding: EdgeInsets.all(2.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Expense()));
                },
                child: new Text("Expense"),
              ),
            )
          ],
        ),

//                        this is a button to add new category
        new Row(
          children: <Widget>[
            new Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.dashboard)),
            new Padding(
              padding: EdgeInsets.all(2.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Category()));
                },
                child: new Text("Category"),
              ),
            )
          ],
        )

      ],
    );
  }
}
