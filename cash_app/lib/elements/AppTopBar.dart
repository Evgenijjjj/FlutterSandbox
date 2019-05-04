import 'package:flutter/material.dart';

import 'AlertComponents.dart';

class AppTopBar {
  AppBar getTopBar(String title, BuildContext context, bool showAddBtn) {
    return AppBar(
      title: new Text(title),
      backgroundColor: Colors.deepOrange,
      centerTitle: !showAddBtn,
      elevation: 1.5,
      actions: <Widget>[
        Visibility(
          child: new IconButton(icon: Icon(Icons.add),
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context) => new AlertDialog(
                      title: new Text("Add"),
                      content: new Container(
                          height: 160.0,
                          child: AlertComponents()
                      ),
                    ));
              }),
          visible: showAddBtn,
        )
      ],
    );
  }
}
