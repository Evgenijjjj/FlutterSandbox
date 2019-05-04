import 'package:flutter/material.dart';

class AppBottomBar {
  Container getBar() {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
            child: ListTile(
              title: new Text("Balance:"),
              subtitle: new Text("\$241"),
            ),
          ),

          Expanded(
            child: ListTile(
              title: new Text("Expense:"),
              subtitle: new Text("\$241", style: TextStyle(color: Colors.red),),
            ),
          ),

          Expanded(
              child: IconButton(
                  icon: Icon(Icons.remove_red_eye, color: Colors.deepOrange,),
                  onPressed: () {})
          ),
        ],
      ),
    );
  }
}