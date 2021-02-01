import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addtx;
  NewTransaction(this.addtx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final titleval = titleController.text;
    final amountVal = double.parse(amountController.text);
    if (titleval.isEmpty || amountVal <= 0) {
      return;
    }
    widget.addtx(
      titleval,
      amountVal,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Title",
                ),
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Amount",
                ),
                // onChanged: (value) {
                //   amountInput = value;
                // },
                controller: amountController,
                keyboardType: TextInputType.number,
                onSubmitted: (value) {
                  submitData();
                },
              ),
              FlatButton(
                  onPressed: () {
                    submitData();
                  },
                  child: Text(
                    "Add Transaction",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 17,
                    ),
                  ))
            ],
          ),
        ));
  }
}
