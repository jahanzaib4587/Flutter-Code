import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:transactions_app/Widgets/transaction_list.dart';
import 'package:transactions_app/models/transactions.dart';
import 'Widgets/NewTransaction.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // String titleInput;
  // String amountInput;
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final titleController = TextEditingController();

  // final amountController = TextEditingController();
  final List<Transactions> _userTransactions = [
    Transactions(
      title: "jahanzaib",
      amount: 24.0,
      id: "12345",
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transactions(
      title: txTitle,
      id: DateTime.now().toString(),
      date: DateTime.now(),
      amount: txAmount,
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return GestureDetector(
          onTap: () {},
          child: NewTransaction(_addNewTransaction),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => startAddNewTransaction(context),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Colors.blue,
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text(
                    "Transactions",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              TransactionList(_userTransactions),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => startAddNewTransaction(context),
          child: Icon(Icons.add),
        ));
  }
}
