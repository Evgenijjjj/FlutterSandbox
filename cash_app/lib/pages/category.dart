import 'package:flutter/material.dart';

import 'package:cash_app/elements/AppTopBar.dart';
import 'package:cash_app/elements/AppBottomBar.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppTopBar().getTopBar("Category", context, false),

        bottomNavigationBar: new AppBottomBar().getBar()
    );
  }
}
