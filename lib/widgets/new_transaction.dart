import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                labelText: 'عنوان',
              ),
              controller: titleController,
            ),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                labelText: 'قیمت',
              ),
              controller: amountController,
            ),
            FlatButton(
              child: Text('اضافه کردن'),
              textColor: Colors.purple,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
