import 'package:flutter/material.dart';

import './widgets/transaction_list.dart';
import './widgets/new_transaction.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'برنامه تستی من',
          ),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text(
                  'نمودار کیری',
                  textAlign: TextAlign.end,
                ),
                elevation: 5,
              ),
            ),
            NewTransaction(),
            TransactionList(),
          ],
        ));
  }
}
