import 'package:flutter/material.dart';
import 'package:new_bytebank/http/webclient.dart';
import 'package:new_bytebank/models/contact.dart';
import 'package:new_bytebank/models/transaction.dart';
import 'package:new_bytebank/screens/deshboard.dart';

void main() {
  runApp(BytebankApp());
  save(Transaction(200.0, Contact(0, 'teta', 2000))).then((transaction) => print(transaction));

}

class BytebankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: DeshBoard(),
    );
  }
}


