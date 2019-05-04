import 'package:flutter/material.dart';

import 'package:cash_app/elements/AppTopBar.dart';
import 'package:cash_app/elements/AppBottomBar.dart';

class Expense extends StatefulWidget {
  @override
  _ExpenseState createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppTopBar().getTopBar("Expense", context, false),

        bottomNavigationBar: new AppBottomBar().getBar()
    );
  }
}
