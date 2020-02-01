import 'package:flutter/material.dart';
import 'package:persian_date/persian_date.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  
  
  String toPersian(DateTime date, String format) {
    PersianDate persianDate =
        new PersianDate(format: format, gregorian: date.toString());
    // var finalDate = persianDate.year.toString() +'/' + persianDate.monthname + '/' + persianDate.day.toString();
    return persianDate.getDate;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
              children: _userTransactions.map((tx) {
                return Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                            width: 2,
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          tx.amount.toString() + ' ت',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            tx.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            toPersian(tx.date, 'yyyy.MM.dd'),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }).toList(),
            );
  }
}