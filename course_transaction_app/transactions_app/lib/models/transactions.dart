import 'package:flutter/material.dart';

class Transactions {
  String id;
  String title;
  double amount;
  DateTime date;
  Transactions({
    @required this.amount,
    @required this.date,
    @required this.id,
    @required this.title,
  });
}
