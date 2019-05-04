import 'package:flutter/material.dart';

import 'package:cash_app/elements/AppTopBar.dart';
import 'package:cash_app/elements/AppBottomBar.dart';

class Income extends StatefulWidget {
  @override
  _IncomeState createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppTopBar().getTopBar("Income", context, false),

        bottomNavigationBar: new AppBottomBar().getBar()
    );
  }
}
